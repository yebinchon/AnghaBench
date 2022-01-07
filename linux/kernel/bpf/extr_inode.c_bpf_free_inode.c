
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; int i_link; int i_mode; } ;
typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;


 scalar_t__ S_ISLNK (int ) ;
 int bpf_any_put (int ,int) ;
 int bpf_inode_type (struct inode*,int*) ;
 int free_inode_nonrcu (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void bpf_free_inode(struct inode *inode)
{
 enum bpf_type type;

 if (S_ISLNK(inode->i_mode))
  kfree(inode->i_link);
 if (!bpf_inode_type(inode, &type))
  bpf_any_put(inode->i_private, type);
 free_inode_nonrcu(inode);
}
