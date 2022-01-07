
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct kvec {void* member_0; size_t member_1; } ;
struct bnep_session {int msg; struct socket* sock; } ;


 int kernel_sendmsg (struct socket*,int *,struct kvec*,int,size_t) ;

__attribute__((used)) static int bnep_send(struct bnep_session *s, void *data, size_t len)
{
 struct socket *sock = s->sock;
 struct kvec iv = { data, len };

 return kernel_sendmsg(sock, &s->msg, &iv, 1, len);
}
