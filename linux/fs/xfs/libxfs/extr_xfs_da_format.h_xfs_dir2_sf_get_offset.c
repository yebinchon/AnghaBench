
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;


 int get_unaligned_be16 (int ) ;

__attribute__((used)) static inline xfs_dir2_data_aoff_t
xfs_dir2_sf_get_offset(xfs_dir2_sf_entry_t *sfep)
{
 return get_unaligned_be16(sfep->offset);
}
