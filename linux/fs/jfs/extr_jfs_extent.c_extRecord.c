
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xad_t ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int commit_mutex; } ;


 TYPE_1__* JFS_IP (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int txBeginAnon (int ) ;
 int xtUpdate (int ,struct inode*,int *) ;

int extRecord(struct inode *ip, xad_t * xp)
{
 int rc;

 txBeginAnon(ip->i_sb);

 mutex_lock(&JFS_IP(ip)->commit_mutex);


 rc = xtUpdate(0, ip, xp);

 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 return rc;
}
