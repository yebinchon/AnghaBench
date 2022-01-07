
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_filblks_t ;
struct TYPE_3__ {int l1; } ;
typedef TYPE_1__ xfs_bmbt_rec_t ;


 int be64_to_cpu (int ) ;
 int xfs_mask64lo (int) ;

xfs_filblks_t
xfs_bmbt_disk_get_blockcount(
 xfs_bmbt_rec_t *r)
{
 return (xfs_filblks_t)(be64_to_cpu(r->l1) & xfs_mask64lo(21));
}
