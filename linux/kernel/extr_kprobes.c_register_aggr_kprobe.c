
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int flags; int list; } ;


 int ENOMEM ;
 int KPROBE_FLAG_DISABLED ;
 int KPROBE_FLAG_GONE ;
 int add_new_kprobe (struct kprobe*,struct kprobe*) ;
 struct kprobe* alloc_aggr_kprobe (struct kprobe*) ;
 int arch_prepare_kprobe (struct kprobe*) ;
 int arm_kprobe (struct kprobe*) ;
 int copy_kprobe (struct kprobe*,struct kprobe*) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int init_aggr_kprobe (struct kprobe*,struct kprobe*) ;
 int jump_label_lock () ;
 int jump_label_unlock () ;
 int kprobe_aggrprobe (struct kprobe*) ;
 scalar_t__ kprobe_disabled (struct kprobe*) ;
 scalar_t__ kprobe_gone (struct kprobe*) ;
 scalar_t__ kprobe_unused (struct kprobe*) ;
 int kprobes_all_disarmed ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_optimized_kprobe (struct kprobe*) ;
 int reuse_unused_kprobe (struct kprobe*) ;
 int synchronize_rcu () ;
 int text_mutex ;

__attribute__((used)) static int register_aggr_kprobe(struct kprobe *orig_p, struct kprobe *p)
{
 int ret = 0;
 struct kprobe *ap = orig_p;

 cpus_read_lock();


 jump_label_lock();
 mutex_lock(&text_mutex);

 if (!kprobe_aggrprobe(orig_p)) {

  ap = alloc_aggr_kprobe(orig_p);
  if (!ap) {
   ret = -ENOMEM;
   goto out;
  }
  init_aggr_kprobe(ap, orig_p);
 } else if (kprobe_unused(ap)) {

  ret = reuse_unused_kprobe(ap);
  if (ret)
   goto out;
 }

 if (kprobe_gone(ap)) {






  ret = arch_prepare_kprobe(ap);
  if (ret)





   goto out;


  prepare_optimized_kprobe(ap);





  ap->flags = (ap->flags & ~KPROBE_FLAG_GONE)
       | KPROBE_FLAG_DISABLED;
 }


 copy_kprobe(ap, p);
 ret = add_new_kprobe(ap, p);

out:
 mutex_unlock(&text_mutex);
 jump_label_unlock();
 cpus_read_unlock();

 if (ret == 0 && kprobe_disabled(ap) && !kprobe_disabled(p)) {
  ap->flags &= ~KPROBE_FLAG_DISABLED;
  if (!kprobes_all_disarmed) {

   ret = arm_kprobe(ap);
   if (ret) {
    ap->flags |= KPROBE_FLAG_DISABLED;
    list_del_rcu(&p->list);
    synchronize_rcu();
   }
  }
 }
 return ret;
}
