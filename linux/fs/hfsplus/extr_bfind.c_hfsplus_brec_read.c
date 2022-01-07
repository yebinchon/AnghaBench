
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_find_data {int entrylength; int entryoffset; int bnode; } ;


 int EINVAL ;
 int hfs_bnode_read (int ,void*,int ,int) ;
 int hfs_brec_find (struct hfs_find_data*,int ) ;
 int hfs_find_rec_by_key ;

int hfs_brec_read(struct hfs_find_data *fd, void *rec, int rec_len)
{
 int res;

 res = hfs_brec_find(fd, hfs_find_rec_by_key);
 if (res)
  return res;
 if (fd->entrylength > rec_len)
  return -EINVAL;
 hfs_bnode_read(fd->bnode, rec, fd->entryoffset, fd->entrylength);
 return 0;
}
