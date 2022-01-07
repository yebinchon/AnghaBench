
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int flags; } ;


 int EINVAL ;
 struct kprobe* ERR_PTR (int) ;
 int KPROBE_FLAG_DISABLED ;
 struct kprobe* __get_valid_kprobe (struct kprobe*) ;
 scalar_t__ aggr_kprobe_disabled (struct kprobe*) ;
 int disarm_kprobe (struct kprobe*,int) ;
 int kprobe_disabled (struct kprobe*) ;
 int kprobes_all_disarmed ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct kprobe *__disable_kprobe(struct kprobe *p)
{
 struct kprobe *orig_p;
 int ret;


 orig_p = __get_valid_kprobe(p);
 if (unlikely(orig_p == ((void*)0)))
  return ERR_PTR(-EINVAL);

 if (!kprobe_disabled(p)) {

  if (p != orig_p)
   p->flags |= KPROBE_FLAG_DISABLED;


  if (p == orig_p || aggr_kprobe_disabled(orig_p)) {





   if (!kprobes_all_disarmed) {
    ret = disarm_kprobe(orig_p, 1);
    if (ret) {
     p->flags &= ~KPROBE_FLAG_DISABLED;
     return ERR_PTR(ret);
    }
   }
   orig_p->flags |= KPROBE_FLAG_DISABLED;
  }
 }

 return orig_p;
}
