
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int report_mutex; int flags; int output_report_success; int terminate; int report_queue; } ;
struct hid_device {struct hidp_session* driver_data; } ;


 int EINVAL ;
 int EIO ;
 int ERESTARTSYS ;
 unsigned char HIDP_DATA_RTYPE_FEATURE ;
 unsigned char HIDP_DATA_RTYPE_INPUT ;
 unsigned char HIDP_DATA_RTYPE_OUPUT ;
 unsigned char HIDP_TRANS_SET_REPORT ;
 int HIDP_WAITING_FOR_SEND_ACK ;



 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int hidp_send_ctrl_message (struct hidp_session*,unsigned char,unsigned char*,size_t) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int hidp_set_raw_report(struct hid_device *hid, unsigned char reportnum,
          unsigned char *data, size_t count,
          unsigned char report_type)
{
 struct hidp_session *session = hid->driver_data;
 int ret;

 switch (report_type) {
 case 130:
  report_type = HIDP_TRANS_SET_REPORT | HIDP_DATA_RTYPE_FEATURE;
  break;
 case 129:
  report_type = HIDP_TRANS_SET_REPORT | HIDP_DATA_RTYPE_INPUT;
  break;
 case 128:
  report_type = HIDP_TRANS_SET_REPORT | HIDP_DATA_RTYPE_OUPUT;
  break;
 default:
  return -EINVAL;
 }

 if (mutex_lock_interruptible(&session->report_mutex))
  return -ERESTARTSYS;


 data[0] = reportnum;
 set_bit(HIDP_WAITING_FOR_SEND_ACK, &session->flags);
 ret = hidp_send_ctrl_message(session, report_type, data, count);
 if (ret < 0)
  goto err;


 while (test_bit(HIDP_WAITING_FOR_SEND_ACK, &session->flags) &&
        !atomic_read(&session->terminate)) {
  int res;

  res = wait_event_interruptible_timeout(session->report_queue,
   !test_bit(HIDP_WAITING_FOR_SEND_ACK, &session->flags)
    || atomic_read(&session->terminate),
   10*HZ);
  if (res == 0) {

   ret = -EIO;
   goto err;
  }
  if (res < 0) {

   ret = -ERESTARTSYS;
   goto err;
  }
 }

 if (!session->output_report_success) {
  ret = -EIO;
  goto err;
 }

 ret = count;

err:
 clear_bit(HIDP_WAITING_FOR_SEND_ACK, &session->flags);
 mutex_unlock(&session->report_mutex);
 return ret;
}
