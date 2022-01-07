
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kprobe_blacklist ;
 int kprobe_blacklist__delete (int *) ;

__attribute__((used)) static void kprobe_blacklist__release(void)
{
 kprobe_blacklist__delete(&kprobe_blacklist);
}
