
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct isofs_fid {int parent_generation; int parent_offset; int parent_block; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* isofs_export_iget (struct super_block*,int ,int ,int ) ;

__attribute__((used)) static struct dentry *isofs_fh_to_parent(struct super_block *sb,
  struct fid *fid, int fh_len, int fh_type)
{
 struct isofs_fid *ifid = (struct isofs_fid *)fid;

 if (fh_len < 2 || fh_type != 2)
  return ((void*)0);

 return isofs_export_iget(sb,
   fh_len > 2 ? ifid->parent_block : 0,
   ifid->parent_offset,
   fh_len > 4 ? ifid->parent_generation : 0);
}
