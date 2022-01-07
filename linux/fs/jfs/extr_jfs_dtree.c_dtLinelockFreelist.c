
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lv {int offset; int length; } ;
struct dtslot {int next; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct TYPE_4__ {int freelist; } ;
struct TYPE_5__ {struct dtslot* slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;


 scalar_t__ txLinelock (struct dt_lock*) ;

__attribute__((used)) static void dtLinelockFreelist(dtpage_t * p,
          int m,
          struct dt_lock ** dtlock)
{
 int fsi;
 struct dtslot *t;
 int si;
 struct dt_lock *dtlck = *dtlock;
 struct lv *lv;
 int xsi, n;


 fsi = p->header.freelist;


 if (dtlck->index >= dtlck->maxcnt)
  dtlck = (struct dt_lock *) txLinelock(dtlck);
 lv = & dtlck->lv[dtlck->index];

 lv->offset = fsi;

 n = 1;
 xsi = fsi;

 t = &p->slot[fsi];
 si = t->next;


 while (si < m && si >= 0) {

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

  t = &p->slot[si];
  si = t->next;
 }


 lv->length = n;
 dtlck->index++;

 *dtlock = dtlck;
}
