
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int ctrl_transmit; int ctrl_sock; } ;


 int hidp_send_message (struct hidp_session*,int ,int *,unsigned char,unsigned char const*,int) ;

__attribute__((used)) static int hidp_send_ctrl_message(struct hidp_session *session,
      unsigned char hdr, const unsigned char *data,
      int size)
{
 return hidp_send_message(session, session->ctrl_sock,
     &session->ctrl_transmit, hdr, data, size);
}
