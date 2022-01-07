
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlock {int flag; } ;
struct linelock {int flag; scalar_t__ next; scalar_t__ index; int maxcnt; } ;
typedef scalar_t__ lid_t ;


 int TLOCKLONG ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int tlckDIRECTORY ;
 int tlckLINELOCK ;
 scalar_t__ txLockAlloc () ;

struct linelock *txLinelock(struct linelock * tlock)
{
 lid_t lid;
 struct tlock *tlck;
 struct linelock *linelock;

 TXN_LOCK();


 lid = txLockAlloc();
 tlck = lid_to_tlock(lid);

 TXN_UNLOCK();


 linelock = (struct linelock *) tlck;
 linelock->next = 0;
 linelock->flag = tlckLINELOCK;
 linelock->maxcnt = TLOCKLONG;
 linelock->index = 0;
 if (tlck->flag & tlckDIRECTORY)
  linelock->flag |= tlckDIRECTORY;


 linelock->next = tlock->next;
 tlock->next = lid;

 return linelock;
}
