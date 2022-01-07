
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_5__ {int generation; } ;
struct kernfs_node {int flags; TYPE_3__ attr; int mode; TYPE_2__ id; } ;
struct inode {int * i_op; int * i_fop; int i_size; int i_generation; TYPE_1__* i_mapping; struct kernfs_node* i_private; } ;
struct TYPE_4__ {int * a_ops; } ;


 int BUG () ;

 int KERNFS_EMPTY_DIR ;


 int kernfs_aops ;
 int kernfs_dir_fops ;
 int kernfs_dir_iops ;
 int kernfs_file_fops ;
 int kernfs_get (struct kernfs_node*) ;
 int kernfs_iops ;
 int kernfs_refresh_inode (struct kernfs_node*,struct inode*) ;
 int kernfs_symlink_iops ;
 int kernfs_type (struct kernfs_node*) ;
 int make_empty_dir_inode (struct inode*) ;
 int set_default_inode_attr (struct inode*,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static void kernfs_init_inode(struct kernfs_node *kn, struct inode *inode)
{
 kernfs_get(kn);
 inode->i_private = kn;
 inode->i_mapping->a_ops = &kernfs_aops;
 inode->i_op = &kernfs_iops;
 inode->i_generation = kn->id.generation;

 set_default_inode_attr(inode, kn->mode);
 kernfs_refresh_inode(kn, inode);


 switch (kernfs_type(kn)) {
 case 130:
  inode->i_op = &kernfs_dir_iops;
  inode->i_fop = &kernfs_dir_fops;
  if (kn->flags & KERNFS_EMPTY_DIR)
   make_empty_dir_inode(inode);
  break;
 case 129:
  inode->i_size = kn->attr.size;
  inode->i_fop = &kernfs_file_fops;
  break;
 case 128:
  inode->i_op = &kernfs_symlink_iops;
  break;
 default:
  BUG();
 }

 unlock_new_inode(inode);
}
