
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lv {int offset; int length; } ;
struct ldtentry {int next; } ;
struct idtentry {int next; } ;
struct dtslot {int next; int cnt; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef int s8 ;
struct TYPE_5__ {int flag; int freelist; int freecnt; int nextindex; } ;
struct TYPE_6__ {TYPE_1__ header; struct dtslot* slot; } ;
typedef TYPE_2__ dtpage_t ;


 int BT_LEAF ;
 int* DT_GETSTBL (TYPE_2__*) ;
 int memmove (int*,int*,int) ;
 scalar_t__ txLinelock (struct dt_lock*) ;

__attribute__((used)) static void dtDeleteEntry(dtpage_t * p, int fi, struct dt_lock ** dtlock)
{
 int fsi;
 s8 *stbl;
 struct dtslot *t;
 int si, freecnt;
 struct dt_lock *dtlck = *dtlock;
 struct lv *lv;
 int xsi, n;


 stbl = DT_GETSTBL(p);
 fsi = stbl[fi];


 if (dtlck->index >= dtlck->maxcnt)
  dtlck = (struct dt_lock *) txLinelock(dtlck);
 lv = & dtlck->lv[dtlck->index];

 lv->offset = fsi;


 t = &p->slot[fsi];
 if (p->header.flag & BT_LEAF)
  si = ((struct ldtentry *) t)->next;
 else
  si = ((struct idtentry *) t)->next;
 t->next = si;
 t->cnt = 1;

 n = freecnt = 1;
 xsi = fsi;


 while (si >= 0) {

  if (si != xsi + 1) {

   lv->length = n;
   dtlck->index++;


   if (dtlck->index < dtlck->maxcnt)
    lv++;
   else {
    dtlck = (struct dt_lock *) txLinelock(dtlck);
    lv = & dtlck->lv[0];
   }

   lv->offset = si;
   n = 0;
  }

  n++;
  xsi = si;
  freecnt++;

  t = &p->slot[si];
  t->cnt = 1;
  si = t->next;
 }


 lv->length = n;
 dtlck->index++;

 *dtlock = dtlck;


 t->next = p->header.freelist;
 p->header.freelist = fsi;
 p->header.freecnt += freecnt;




 si = p->header.nextindex;
 if (fi < si - 1)
  memmove(&stbl[fi], &stbl[fi + 1], si - fi - 1);

 p->header.nextindex--;
}
