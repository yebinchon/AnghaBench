
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {size_t len; int data; } ;
struct hidp_session {unsigned char waiting_report_type; unsigned char waiting_report_number; int report_mutex; int flags; struct sk_buff* report_return; int terminate; int report_queue; } ;
struct hid_device {TYPE_1__* report_enum; struct hidp_session* driver_data; } ;
struct TYPE_2__ {int numbered; } ;


 int EINVAL ;
 int EIO ;
 int ERESTARTSYS ;
 unsigned char HIDP_DATA_RTYPE_FEATURE ;
 unsigned char HIDP_DATA_RTYPE_INPUT ;
 unsigned char HIDP_DATA_RTYPE_MASK ;
 unsigned char HIDP_DATA_RTYPE_OUPUT ;
 unsigned char HIDP_TRANS_GET_REPORT ;
 int HIDP_WAITING_FOR_RETURN ;



 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int hidp_send_ctrl_message (struct hidp_session*,unsigned char,unsigned char*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int hidp_get_raw_report(struct hid_device *hid,
  unsigned char report_number,
  unsigned char *data, size_t count,
  unsigned char report_type)
{
 struct hidp_session *session = hid->driver_data;
 struct sk_buff *skb;
 size_t len;
 int numbered_reports = hid->report_enum[report_type].numbered;
 int ret;

 if (atomic_read(&session->terminate))
  return -EIO;

 switch (report_type) {
 case 130:
  report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_FEATURE;
  break;
 case 129:
  report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_INPUT;
  break;
 case 128:
  report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_OUPUT;
  break;
 default:
  return -EINVAL;
 }

 if (mutex_lock_interruptible(&session->report_mutex))
  return -ERESTARTSYS;


 session->waiting_report_type = report_type & HIDP_DATA_RTYPE_MASK;
 session->waiting_report_number = numbered_reports ? report_number : -1;
 set_bit(HIDP_WAITING_FOR_RETURN, &session->flags);
 data[0] = report_number;
 ret = hidp_send_ctrl_message(session, report_type, data, 1);
 if (ret < 0)
  goto err;



 while (test_bit(HIDP_WAITING_FOR_RETURN, &session->flags) &&
        !atomic_read(&session->terminate)) {
  int res;

  res = wait_event_interruptible_timeout(session->report_queue,
   !test_bit(HIDP_WAITING_FOR_RETURN, &session->flags)
    || atomic_read(&session->terminate),
   5*HZ);
  if (res == 0) {

   ret = -EIO;
   goto err;
  }
  if (res < 0) {

   ret = -ERESTARTSYS;
   goto err;
  }
 }

 skb = session->report_return;
 if (skb) {
  len = skb->len < count ? skb->len : count;
  memcpy(data, skb->data, len);

  kfree_skb(skb);
  session->report_return = ((void*)0);
 } else {

  len = -EIO;
 }

 clear_bit(HIDP_WAITING_FOR_RETURN, &session->flags);
 mutex_unlock(&session->report_mutex);

 return len;

err:
 clear_bit(HIDP_WAITING_FOR_RETURN, &session->flags);
 mutex_unlock(&session->report_mutex);
 return ret;
}
