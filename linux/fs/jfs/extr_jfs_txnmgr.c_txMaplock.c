
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tid_t ;
struct tlock {int type; scalar_t__ next; int lock; int * mp; struct inode* ip; int flag; scalar_t__ tid; } ;
struct tblock {void* last; void* next; } ;
struct maplock {scalar_t__ index; scalar_t__ maxcnt; scalar_t__ next; } ;
struct jfs_inode_info {scalar_t__ atlhead; int anon_inode_list; void* atltail; } ;
struct inode {int i_mode; } ;
typedef void* lid_t ;
struct TYPE_2__ {int anon_list; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 TYPE_1__ TxAnchor ;
 struct tlock* lid_to_tlock (void*) ;
 int list_add_tail (int *,int *) ;
 struct tblock* tid_to_tblock (scalar_t__) ;
 int tlckDIRECTORY ;
 int tlckINODELOCK ;
 void* txLockAlloc () ;

struct tlock *txMaplock(tid_t tid, struct inode *ip, int type)
{
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 lid_t lid;
 struct tblock *tblk;
 struct tlock *tlck;
 struct maplock *maplock;

 TXN_LOCK();




 lid = txLockAlloc();
 tlck = lid_to_tlock(lid);




 tlck->tid = tid;


 tlck->flag = tlckINODELOCK;
 if (S_ISDIR(ip->i_mode))
  tlck->flag |= tlckDIRECTORY;
 tlck->ip = ip;
 tlck->mp = ((void*)0);

 tlck->type = type;





 if (tid) {
  tblk = tid_to_tblock(tid);
  if (tblk->next)
   lid_to_tlock(tblk->last)->next = lid;
  else
   tblk->next = lid;
  tlck->next = 0;
  tblk->last = lid;
 }



 else {
  tlck->next = jfs_ip->atlhead;
  jfs_ip->atlhead = lid;
  if (tlck->next == 0) {

   jfs_ip->atltail = lid;
   list_add_tail(&jfs_ip->anon_inode_list,
          &TxAnchor.anon_list);
  }
 }

 TXN_UNLOCK();


 maplock = (struct maplock *) & tlck->lock;
 maplock->next = 0;
 maplock->maxcnt = 0;
 maplock->index = 0;

 return tlck;
}
