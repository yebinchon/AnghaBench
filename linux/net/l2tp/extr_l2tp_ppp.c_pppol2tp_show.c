
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct seq_file {int dummy; } ;
struct pppox_sock {int chan; } ;
struct l2tp_session {int dummy; } ;


 int ppp_dev_name (int *) ;
 struct sock* pppol2tp_session_get_sock (struct l2tp_session*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void pppol2tp_show(struct seq_file *m, void *arg)
{
 struct l2tp_session *session = arg;
 struct sock *sk;

 sk = pppol2tp_session_get_sock(session);
 if (sk) {
  struct pppox_sock *po = pppox_sk(sk);

  seq_printf(m, "   interface %s\n", ppp_dev_name(&po->chan));
  sock_put(sk);
 }
}
