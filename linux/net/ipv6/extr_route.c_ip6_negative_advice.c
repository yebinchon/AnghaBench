
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; } ;
struct dst_entry {int dummy; } ;


 int RTF_CACHE ;
 int dst_release (struct dst_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rt6_check_expired (struct rt6_info*) ;
 int rt6_remove_exception_rt (struct rt6_info*) ;

__attribute__((used)) static struct dst_entry *ip6_negative_advice(struct dst_entry *dst)
{
 struct rt6_info *rt = (struct rt6_info *) dst;

 if (rt) {
  if (rt->rt6i_flags & RTF_CACHE) {
   rcu_read_lock();
   if (rt6_check_expired(rt)) {
    rt6_remove_exception_rt(rt);
    dst = ((void*)0);
   }
   rcu_read_unlock();
  } else {
   dst_release(dst);
   dst = ((void*)0);
  }
 }
 return dst;
}
