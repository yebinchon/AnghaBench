
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;
struct nfs_server {int dummy; } ;
typedef int dev_t ;


 struct nfs_server* NFS_SB (struct super_block*) ;
 int free_anon_bdev (int ) ;
 int generic_shutdown_super (struct super_block*) ;
 int nfs_free_server (struct nfs_server*) ;
 int nfs_fscache_release_super_cookie (struct super_block*) ;

void nfs_kill_super(struct super_block *s)
{
 struct nfs_server *server = NFS_SB(s);
 dev_t dev = s->s_dev;

 generic_shutdown_super(s);

 nfs_fscache_release_super_cookie(s);

 nfs_free_server(server);
 free_anon_bdev(dev);
}
