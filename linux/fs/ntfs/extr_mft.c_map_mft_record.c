
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vol; int count; int mrec_lock; int mft_no; } ;
typedef TYPE_2__ ntfs_inode ;
struct TYPE_5__ {int sb; } ;
typedef int MFT_RECORD ;


 int IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int * map_mft_record_page (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntfs_debug (char*,int ) ;
 int ntfs_error (int ,char*,int ) ;

MFT_RECORD *map_mft_record(ntfs_inode *ni)
{
 MFT_RECORD *m;

 ntfs_debug("Entering for mft_no 0x%lx.", ni->mft_no);


 atomic_inc(&ni->count);


 mutex_lock(&ni->mrec_lock);

 m = map_mft_record_page(ni);
 if (!IS_ERR(m))
  return m;

 mutex_unlock(&ni->mrec_lock);
 atomic_dec(&ni->count);
 ntfs_error(ni->vol->sb, "Failed with error code %lu.", -PTR_ERR(m));
 return m;
}
