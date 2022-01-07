
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidp_session {int input_buf; int hid; } ;


 unsigned int HID_MAX_BUFFER_SIZE ;
 int hid_input_report (int ,int,int ,unsigned int,int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static void hidp_process_report(struct hidp_session *session, int type,
    const u8 *data, unsigned int len, int intr)
{
 if (len > HID_MAX_BUFFER_SIZE)
  len = HID_MAX_BUFFER_SIZE;

 memcpy(session->input_buf, data, len);
 hid_input_report(session->hid, type, session->input_buf, len, intr);
}
