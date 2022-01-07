
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_filestream; } ;
typedef TYPE_1__ xfs_mount_t ;


 int xfs_fstrm_centisecs ;
 int xfs_fstrm_free_func ;
 int xfs_mru_cache_create (int *,TYPE_1__*,int,int,int ) ;

int
xfs_filestream_mount(
 xfs_mount_t *mp)
{







 return xfs_mru_cache_create(&mp->m_filestream, mp,
   xfs_fstrm_centisecs * 10, 10, xfs_fstrm_free_func);
}
