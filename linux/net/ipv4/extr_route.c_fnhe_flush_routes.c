
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dst; } ;
struct fib_nh_exception {int fnhe_rth_output; int fnhe_rth_input; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dst_dev_put (int *) ;
 int dst_release (int *) ;
 struct rtable* rcu_dereference (int ) ;

__attribute__((used)) static void fnhe_flush_routes(struct fib_nh_exception *fnhe)
{
 struct rtable *rt;

 rt = rcu_dereference(fnhe->fnhe_rth_input);
 if (rt) {
  RCU_INIT_POINTER(fnhe->fnhe_rth_input, ((void*)0));
  dst_dev_put(&rt->dst);
  dst_release(&rt->dst);
 }
 rt = rcu_dereference(fnhe->fnhe_rth_output);
 if (rt) {
  RCU_INIT_POINTER(fnhe->fnhe_rth_output, ((void*)0));
  dst_dev_put(&rt->dst);
  dst_release(&rt->dst);
 }
}
