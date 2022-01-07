
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pppol2tp_session {int owner; int sk_lock; } ;
struct l2tp_session {int show; int recv_skb; } ;
struct TYPE_2__ {int pid; } ;


 int CONFIG_L2TP_DEBUGFS ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_1__* current ;
 struct pppol2tp_session* l2tp_session_priv (struct l2tp_session*) ;
 int mutex_init (int *) ;
 int pppol2tp_recv ;
 int pppol2tp_show ;

__attribute__((used)) static void pppol2tp_session_init(struct l2tp_session *session)
{
 struct pppol2tp_session *ps;

 session->recv_skb = pppol2tp_recv;
 if (IS_ENABLED(CONFIG_L2TP_DEBUGFS))
  session->show = pppol2tp_show;

 ps = l2tp_session_priv(session);
 mutex_init(&ps->sk_lock);
 ps->owner = current->pid;
}
