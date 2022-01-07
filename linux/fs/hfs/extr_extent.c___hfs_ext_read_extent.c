
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hfs_find_data {int entrylength; int entryoffset; int bnode; TYPE_4__* search_key; TYPE_2__* key; } ;
struct hfs_extent {int dummy; } ;
typedef int hfs_extent_rec ;
struct TYPE_7__ {scalar_t__ FNum; scalar_t__ FkType; } ;
struct TYPE_8__ {TYPE_3__ ext; } ;
struct TYPE_5__ {scalar_t__ FNum; scalar_t__ FkType; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;


 int EIO ;
 int ENOENT ;
 int hfs_bnode_read (int ,struct hfs_extent*,int ,int) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_ext_build_key (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static inline int __hfs_ext_read_extent(struct hfs_find_data *fd, struct hfs_extent *extent,
     u32 cnid, u32 block, u8 type)
{
 int res;

 hfs_ext_build_key(fd->search_key, cnid, block, type);
 fd->key->ext.FNum = 0;
 res = hfs_brec_find(fd);
 if (res && res != -ENOENT)
  return res;
 if (fd->key->ext.FNum != fd->search_key->ext.FNum ||
     fd->key->ext.FkType != fd->search_key->ext.FkType)
  return -ENOENT;
 if (fd->entrylength != sizeof(hfs_extent_rec))
  return -EIO;
 hfs_bnode_read(fd->bnode, extent, fd->entryoffset, sizeof(hfs_extent_rec));
 return 0;
}
