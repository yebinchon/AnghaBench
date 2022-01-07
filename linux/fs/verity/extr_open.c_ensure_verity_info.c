
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct fsverity_info {int dummy; } ;
struct fsverity_descriptor {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_vop; } ;
struct TYPE_3__ {int (* get_verity_descriptor ) (struct inode*,struct fsverity_descriptor*,int) ;} ;


 int EMSGSIZE ;
 int ENOMEM ;
 int FS_VERITY_MAX_DESCRIPTOR_SIZE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fsverity_info*) ;
 int PTR_ERR (struct fsverity_info*) ;
 struct fsverity_info* fsverity_create_info (struct inode*,struct fsverity_descriptor*,int) ;
 int fsverity_err (struct inode*,char*,int) ;
 struct fsverity_info* fsverity_get_info (struct inode*) ;
 int fsverity_set_info (struct inode*,struct fsverity_info*) ;
 int kfree (struct fsverity_descriptor*) ;
 struct fsverity_descriptor* kmalloc (int,int ) ;
 int stub1 (struct inode*,struct fsverity_descriptor*,int) ;
 int stub2 (struct inode*,struct fsverity_descriptor*,int) ;

__attribute__((used)) static int ensure_verity_info(struct inode *inode)
{
 struct fsverity_info *vi = fsverity_get_info(inode);
 struct fsverity_descriptor *desc;
 int res;

 if (vi)
  return 0;

 res = inode->i_sb->s_vop->get_verity_descriptor(inode, ((void*)0), 0);
 if (res < 0) {
  fsverity_err(inode,
        "Error %d getting verity descriptor size", res);
  return res;
 }
 if (res > FS_VERITY_MAX_DESCRIPTOR_SIZE) {
  fsverity_err(inode, "Verity descriptor is too large (%d bytes)",
        res);
  return -EMSGSIZE;
 }
 desc = kmalloc(res, GFP_KERNEL);
 if (!desc)
  return -ENOMEM;
 res = inode->i_sb->s_vop->get_verity_descriptor(inode, desc, res);
 if (res < 0) {
  fsverity_err(inode, "Error %d reading verity descriptor", res);
  goto out_free_desc;
 }

 vi = fsverity_create_info(inode, desc, res);
 if (IS_ERR(vi)) {
  res = PTR_ERR(vi);
  goto out_free_desc;
 }

 fsverity_set_info(inode, vi);
 res = 0;
out_free_desc:
 kfree(desc);
 return res;
}
