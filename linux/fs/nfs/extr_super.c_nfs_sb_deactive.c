
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nfs_server {int active; } ;


 struct nfs_server* NFS_SB (struct super_block*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int deactivate_super (struct super_block*) ;

void nfs_sb_deactive(struct super_block *sb)
{
 struct nfs_server *server = NFS_SB(sb);

 if (atomic_dec_and_test(&server->active))
  deactivate_super(sb);
}
