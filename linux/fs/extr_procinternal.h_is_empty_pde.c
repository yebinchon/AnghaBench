
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int proc_iops; int mode; } ;


 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static inline bool is_empty_pde(const struct proc_dir_entry *pde)
{
 return S_ISDIR(pde->mode) && !pde->proc_iops;
}
