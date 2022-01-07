
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aa_loaddata {long revision; int * dents; TYPE_1__* ns; } ;
struct TYPE_5__ {void* i_mtime; } ;
struct TYPE_4__ {int lock; } ;


 size_t AAFS_LOADDATA_DIR ;
 size_t AAFS_LOADDATA_REVISION ;
 int AA_BUG (int) ;
 void* current_time (TYPE_2__*) ;
 TYPE_2__* d_inode (int ) ;
 int mutex_is_locked (int *) ;

void __aa_loaddata_update(struct aa_loaddata *data, long revision)
{
 AA_BUG(!data);
 AA_BUG(!data->ns);
 AA_BUG(!data->dents[AAFS_LOADDATA_REVISION]);
 AA_BUG(!mutex_is_locked(&data->ns->lock));
 AA_BUG(data->revision > revision);

 data->revision = revision;
 d_inode(data->dents[AAFS_LOADDATA_DIR])->i_mtime =
  current_time(d_inode(data->dents[AAFS_LOADDATA_DIR]));
 d_inode(data->dents[AAFS_LOADDATA_REVISION])->i_mtime =
  current_time(d_inode(data->dents[AAFS_LOADDATA_REVISION]));
}
