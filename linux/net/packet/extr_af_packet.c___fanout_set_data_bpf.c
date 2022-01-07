
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_fanout {int lock; int bpf_prog; } ;
struct bpf_prog {int dummy; } ;


 int bpf_prog_destroy (struct bpf_prog*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct bpf_prog*) ;
 struct bpf_prog* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_net () ;

__attribute__((used)) static void __fanout_set_data_bpf(struct packet_fanout *f, struct bpf_prog *new)
{
 struct bpf_prog *old;

 spin_lock(&f->lock);
 old = rcu_dereference_protected(f->bpf_prog, lockdep_is_held(&f->lock));
 rcu_assign_pointer(f->bpf_prog, new);
 spin_unlock(&f->lock);

 if (old) {
  synchronize_net();
  bpf_prog_destroy(old);
 }
}
