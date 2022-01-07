
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handler_errors ;
 int kp ;
 scalar_t__ posth_val ;
 int pr_err (char*,...) ;
 scalar_t__ preh_val ;
 int rand1 ;
 int register_kprobe (int *) ;
 int target (int ) ;
 int unregister_kprobe (int *) ;

__attribute__((used)) static int test_kprobe(void)
{
 int ret;

 ret = register_kprobe(&kp);
 if (ret < 0) {
  pr_err("register_kprobe returned %d\n", ret);
  return ret;
 }

 ret = target(rand1);
 unregister_kprobe(&kp);

 if (preh_val == 0) {
  pr_err("kprobe pre_handler not called\n");
  handler_errors++;
 }

 if (posth_val == 0) {
  pr_err("kprobe post_handler not called\n");
  handler_errors++;
 }

 return 0;
}
