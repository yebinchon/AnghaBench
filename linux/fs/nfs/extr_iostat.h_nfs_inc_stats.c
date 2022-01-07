
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef enum nfs_stat_eventcounters { ____Placeholder_nfs_stat_eventcounters } nfs_stat_eventcounters ;


 int NFS_SERVER (struct inode const*) ;
 int nfs_inc_server_stats (int ,int) ;

__attribute__((used)) static inline void nfs_inc_stats(const struct inode *inode,
     enum nfs_stat_eventcounters stat)
{
 nfs_inc_server_stats(NFS_SERVER(inode), stat);
}
