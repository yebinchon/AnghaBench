
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tid_t ;
struct tblock {int xflag; } ;
struct inode {int i_mode; scalar_t__ i_size; } ;
typedef int s64 ;
struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ acl; TYPE_1__ ea; } ;


 int COMMIT_Freewmap ;
 int COMMIT_PMAP ;
 int DXD_EXTENT ;
 scalar_t__ IDATASIZE ;
 TYPE_2__* JFS_IP (struct inode*) ;
 int S_IFDIR ;

 int S_IFMT ;

 int assert (int) ;
 int jfs_info (char*,int ,struct inode*) ;
 int set_cflag (int ,struct inode*) ;
 struct tblock* tid_to_tblock (int ) ;
 int txEA (int ,struct inode*,TYPE_1__*,int *) ;
 int xtTruncate_pmap (int ,struct inode*,int ) ;

__attribute__((used)) static s64 commitZeroLink(tid_t tid, struct inode *ip)
{
 int filetype;
 struct tblock *tblk;

 jfs_info("commitZeroLink: tid = %d, ip = 0x%p", tid, ip);

 filetype = ip->i_mode & S_IFMT;
 switch (filetype) {
 case 128:
  break;
 case 129:

  if (ip->i_size < IDATASIZE) {
   ip->i_size = 0;
   return 0;
  }
  break;
 default:
  assert(filetype != S_IFDIR);
  return 0;
 }

 set_cflag(COMMIT_Freewmap, ip);


 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_PMAP;




 if (JFS_IP(ip)->ea.flag & DXD_EXTENT)

  txEA(tid, ip, &JFS_IP(ip)->ea, ((void*)0));




 if (JFS_IP(ip)->acl.flag & DXD_EXTENT)

  txEA(tid, ip, &JFS_IP(ip)->acl, ((void*)0));







 if (ip->i_size)
  return xtTruncate_pmap(tid, ip, 0);

 return 0;
}
