
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kretprobe {int dummy; } ;


 int ENOSYS ;

int register_kretprobes(struct kretprobe **rps, int num)
{
 return -ENOSYS;
}
