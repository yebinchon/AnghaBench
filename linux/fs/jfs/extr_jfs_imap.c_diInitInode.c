
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_inode_info {int active_ag; int agstart; int ixpxd; } ;
struct inode {int i_ino; } ;
struct iag {int agstart; int * inoext; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int L2INOSPERIAG ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline void
diInitInode(struct inode *ip, int iagno, int ino, int extno, struct iag * iagp)
{
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);

 ip->i_ino = (iagno << L2INOSPERIAG) + ino;
 jfs_ip->ixpxd = iagp->inoext[extno];
 jfs_ip->agstart = le64_to_cpu(iagp->agstart);
 jfs_ip->active_ag = -1;
}
