
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;


 int put_unaligned_be16 (int ,int ) ;

__attribute__((used)) static inline void
xfs_dir2_sf_put_offset(xfs_dir2_sf_entry_t *sfep, xfs_dir2_data_aoff_t off)
{
 put_unaligned_be16(off, sfep->offset);
}
