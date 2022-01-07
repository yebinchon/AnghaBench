
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tlock {int type; struct inode* ip; int flag; scalar_t__ next; } ;
struct tblock {scalar_t__ next; } ;
struct TYPE_5__ {void* inode; void* fileset; } ;
struct TYPE_6__ {TYPE_1__ redopage; } ;
struct lrd {TYPE_2__ log; void* aggregate; } ;
struct jfs_log {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
struct commit {struct lrd lrd; } ;
typedef scalar_t__ lid_t ;
struct TYPE_8__ {int fileset; } ;
struct TYPE_7__ {int aggregate; } ;


 TYPE_4__* JFS_IP (struct inode*) ;
 TYPE_3__* JFS_SBI (int ) ;
 void* cpu_to_le32 (int ) ;
 int dataLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int diLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*,struct commit*) ;
 int dtLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int jfs_err (char*,struct tlock*) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int mapLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;



 int tlckLOG ;

 int tlckTYPE ;

 int xtLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;

__attribute__((used)) static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
{
 int rc = 0;
 struct inode *ip;
 lid_t lid;
 struct tlock *tlck;
 struct lrd *lrd = &cd->lrd;




 for (lid = tblk->next; lid; lid = tlck->next) {
  tlck = lid_to_tlock(lid);

  tlck->flag |= tlckLOG;


  ip = tlck->ip;
  lrd->aggregate = cpu_to_le32(JFS_SBI(ip->i_sb)->aggregate);
  lrd->log.redopage.fileset = cpu_to_le32(JFS_IP(ip)->fileset);
  lrd->log.redopage.inode = cpu_to_le32(ip->i_ino);


  switch (tlck->type & tlckTYPE) {
  case 128:
   xtLog(log, tblk, lrd, tlck);
   break;

  case 131:
   dtLog(log, tblk, lrd, tlck);
   break;

  case 130:
   diLog(log, tblk, lrd, tlck, cd);
   break;

  case 129:
   mapLog(log, tblk, lrd, tlck);
   break;

  case 132:
   dataLog(log, tblk, lrd, tlck);
   break;

  default:
   jfs_err("UFO tlock:0x%p", tlck);
  }
 }

 return rc;
}
