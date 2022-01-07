
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef enum nfs_stat_bytecounters { ____Placeholder_nfs_stat_bytecounters } nfs_stat_bytecounters ;


 int NFS_SERVER (struct inode const*) ;
 int nfs_add_server_stats (int ,int,long) ;

__attribute__((used)) static inline void nfs_add_stats(const struct inode *inode,
     enum nfs_stat_bytecounters stat,
     long addend)
{
 nfs_add_server_stats(NFS_SERVER(inode), stat, addend);
}
