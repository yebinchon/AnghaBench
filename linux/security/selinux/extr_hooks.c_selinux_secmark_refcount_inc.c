
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int selinux_secmark_refcount ;

__attribute__((used)) static void selinux_secmark_refcount_inc(void)
{
 atomic_inc(&selinux_secmark_refcount);
}
