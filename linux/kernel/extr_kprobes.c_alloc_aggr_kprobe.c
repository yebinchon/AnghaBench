
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;


 int GFP_KERNEL ;
 struct kprobe* kzalloc (int,int ) ;

__attribute__((used)) static struct kprobe *alloc_aggr_kprobe(struct kprobe *p)
{
 return kzalloc(sizeof(struct kprobe), GFP_KERNEL);
}
