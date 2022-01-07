
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rpcs_out; int ncommit; int list; } ;
struct nfs_inode {int commit_mutex; int rmdir_sem; TYPE_1__ commit_info; int nrequests; int access_cache_inode_lru; int access_cache_entry_lru; int open_files; int vfs_inode; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_long_set (int *,int ) ;
 int atomic_set (int *,int ) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int mutex_init (int *) ;
 int nfs4_init_once (struct nfs_inode*) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct nfs_inode *nfsi = (struct nfs_inode *) foo;

 inode_init_once(&nfsi->vfs_inode);
 INIT_LIST_HEAD(&nfsi->open_files);
 INIT_LIST_HEAD(&nfsi->access_cache_entry_lru);
 INIT_LIST_HEAD(&nfsi->access_cache_inode_lru);
 INIT_LIST_HEAD(&nfsi->commit_info.list);
 atomic_long_set(&nfsi->nrequests, 0);
 atomic_long_set(&nfsi->commit_info.ncommit, 0);
 atomic_set(&nfsi->commit_info.rpcs_out, 0);
 init_rwsem(&nfsi->rmdir_sem);
 mutex_init(&nfsi->commit_mutex);
 nfs4_init_once(nfsi);
}
