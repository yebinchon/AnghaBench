
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;
struct hid_device {struct hidp_session* driver_data; } ;
typedef int __u8 ;


 int HIDP_DATA_RTYPE_OUPUT ;
 int HIDP_TRANS_DATA ;
 int hidp_send_intr_message (struct hidp_session*,int,int *,size_t) ;

__attribute__((used)) static int hidp_output_report(struct hid_device *hid, __u8 *data, size_t count)
{
 struct hidp_session *session = hid->driver_data;

 return hidp_send_intr_message(session,
          HIDP_TRANS_DATA | HIDP_DATA_RTYPE_OUPUT,
          data, count);
}
