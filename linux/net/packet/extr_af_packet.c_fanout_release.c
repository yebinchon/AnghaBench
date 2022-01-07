
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {struct packet_fanout* fanout; } ;
struct packet_fanout {int list; int sk_ref; } ;


 int fanout_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static struct packet_fanout *fanout_release(struct sock *sk)
{
 struct packet_sock *po = pkt_sk(sk);
 struct packet_fanout *f;

 mutex_lock(&fanout_mutex);
 f = po->fanout;
 if (f) {
  po->fanout = ((void*)0);

  if (refcount_dec_and_test(&f->sk_ref))
   list_del(&f->list);
  else
   f = ((void*)0);
 }
 mutex_unlock(&fanout_mutex);

 return f;
}
