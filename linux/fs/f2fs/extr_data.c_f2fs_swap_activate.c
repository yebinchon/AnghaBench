
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int sector_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static int f2fs_swap_activate(struct swap_info_struct *sis, struct file *file,
    sector_t *span)
{
 return -EOPNOTSUPP;
}
