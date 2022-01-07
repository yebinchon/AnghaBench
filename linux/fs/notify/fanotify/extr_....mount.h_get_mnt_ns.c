
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {int count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_mnt_ns(struct mnt_namespace *ns)
{
 atomic_inc(&ns->count);
}
