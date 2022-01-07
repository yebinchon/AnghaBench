
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {scalar_t__ flags; int * addr; } ;


 int handler_errors ;
 struct kprobe kp ;
 struct kprobe kp2 ;
 scalar_t__ posth_val ;
 int pr_err (char*,...) ;
 scalar_t__ preh_val ;
 int rand1 ;
 int register_kprobes (struct kprobe**,int) ;
 int target (int ) ;
 int target2 (int ) ;
 int unregister_kprobes (struct kprobe**,int) ;

__attribute__((used)) static int test_kprobes(void)
{
 int ret;
 struct kprobe *kps[2] = {&kp, &kp2};


 kp.addr = ((void*)0);
 kp.flags = 0;
 ret = register_kprobes(kps, 2);
 if (ret < 0) {
  pr_err("register_kprobes returned %d\n", ret);
  return ret;
 }

 preh_val = 0;
 posth_val = 0;
 ret = target(rand1);

 if (preh_val == 0) {
  pr_err("kprobe pre_handler not called\n");
  handler_errors++;
 }

 if (posth_val == 0) {
  pr_err("kprobe post_handler not called\n");
  handler_errors++;
 }

 preh_val = 0;
 posth_val = 0;
 ret = target2(rand1);

 if (preh_val == 0) {
  pr_err("kprobe pre_handler2 not called\n");
  handler_errors++;
 }

 if (posth_val == 0) {
  pr_err("kprobe post_handler2 not called\n");
  handler_errors++;
 }

 unregister_kprobes(kps, 2);
 return 0;

}
