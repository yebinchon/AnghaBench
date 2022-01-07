
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct proc_dir_entry *pde_get(struct proc_dir_entry *pde)
{
 refcount_inc(&pde->refcnt);
 return pde;
}
