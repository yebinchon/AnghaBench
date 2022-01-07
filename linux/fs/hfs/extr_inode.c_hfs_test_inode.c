
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct hfs_iget_data {TYPE_3__* rec; } ;
struct TYPE_5__ {int FlNum; } ;
struct TYPE_4__ {int DirID; } ;
struct TYPE_6__ {int type; TYPE_2__ file; TYPE_1__ dir; } ;
typedef TYPE_3__ hfs_cat_rec ;


 int BUG () ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int hfs_test_inode(struct inode *inode, void *data)
{
 struct hfs_iget_data *idata = data;
 hfs_cat_rec *rec;

 rec = idata->rec;
 switch (rec->type) {
 case 129:
  return inode->i_ino == be32_to_cpu(rec->dir.DirID);
 case 128:
  return inode->i_ino == be32_to_cpu(rec->file.FlNum);
 default:
  BUG();
  return 1;
 }
}
