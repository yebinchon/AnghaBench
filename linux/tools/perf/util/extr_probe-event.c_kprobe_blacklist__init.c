
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprobe_blacklist ;
 scalar_t__ kprobe_blacklist__load (int *) ;
 int list_empty (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static void kprobe_blacklist__init(void)
{
 if (!list_empty(&kprobe_blacklist))
  return;

 if (kprobe_blacklist__load(&kprobe_blacklist) < 0)
  pr_debug("No kprobe blacklist support, ignored\n");
}
