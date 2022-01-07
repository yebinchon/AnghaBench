
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int intr_transmit; int intr_sock; } ;


 int hidp_send_message (struct hidp_session*,int ,int *,unsigned char,unsigned char const*,int) ;

__attribute__((used)) static int hidp_send_intr_message(struct hidp_session *session,
      unsigned char hdr, const unsigned char *data,
      int size)
{
 return hidp_send_message(session, session->intr_sock,
     &session->intr_transmit, hdr, data, size);
}
