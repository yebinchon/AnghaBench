
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {struct packet_fanout* fanout; } ;
struct packet_fanout {size_t num_members; int lock; int prot_hook; struct sock** arr; } ;


 int dev_add_pack (int *) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __fanout_link(struct sock *sk, struct packet_sock *po)
{
 struct packet_fanout *f = po->fanout;

 spin_lock(&f->lock);
 f->arr[f->num_members] = sk;
 smp_wmb();
 f->num_members++;
 if (f->num_members == 1)
  dev_add_pack(&f->prot_hook);
 spin_unlock(&f->lock);
}
