
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmalloced_param {void* val; int list; } ;


 int GFP_KERNEL ;
 struct kmalloced_param* kmalloc (int,int ) ;
 int kmalloced_params ;
 int kmalloced_params_lock ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void *kmalloc_parameter(unsigned int size)
{
 struct kmalloced_param *p;

 p = kmalloc(sizeof(*p) + size, GFP_KERNEL);
 if (!p)
  return ((void*)0);

 spin_lock(&kmalloced_params_lock);
 list_add(&p->list, &kmalloced_params);
 spin_unlock(&kmalloced_params_lock);

 return p->val;
}
