
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct seq_file {int dummy; } ;
struct llc_sock {struct llc_sap* sap; } ;
struct llc_sap {int sk_lock; } ;


 void* SEQ_START_TOKEN ;
 struct llc_sock* llc_sk (struct sock*) ;
 int rcu_read_unlock_bh () ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void llc_seq_stop(struct seq_file *seq, void *v)
{
 if (v && v != SEQ_START_TOKEN) {
  struct sock *sk = v;
  struct llc_sock *llc = llc_sk(sk);
  struct llc_sap *sap = llc->sap;

  spin_unlock_bh(&sap->sk_lock);
 }
 rcu_read_unlock_bh();
}
