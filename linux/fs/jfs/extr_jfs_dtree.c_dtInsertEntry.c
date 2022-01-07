
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
struct metapage {int dummy; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int next; int namlen; void* index; int * name; void* inumber; } ;
struct idtentry {int next; int namlen; int * name; } ;
struct dtslot {int next; int * name; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
struct component_name {int namlen; int * name; } ;
typedef size_t s8 ;
typedef int s64 ;
typedef int pxd_t ;
struct TYPE_9__ {int freelist; int flag; int nextindex; int freecnt; int self; } ;
struct TYPE_10__ {TYPE_2__ header; struct dtslot* slot; } ;
typedef TYPE_3__ dtpage_t ;
struct TYPE_8__ {scalar_t__ ip; int tid; int ino; } ;
struct TYPE_11__ {TYPE_1__ leaf; int xd; } ;
typedef TYPE_4__ ddata_t ;
typedef int __le16 ;


 int BT_LEAF ;
 int BT_ROOT ;
 int DTIHDRDATALEN ;
 int DTLHDRDATALEN ;
 int DTLHDRDATALEN_LEGACY ;
 int DTSLOTDATALEN ;
 size_t* DT_GETSTBL (TYPE_3__*) ;
 int UniStrncpy_to_le (int *,int *,int) ;
 int add_index (int ,scalar_t__,int ,int) ;
 int addressPXD (int *) ;
 void* cpu_to_le32 (int ) ;
 int le32_to_cpu (void*) ;
 int memmove (size_t*,size_t*,int) ;
 int min (int,int ) ;
 int modify_index (int ,scalar_t__,int ,int ,int,struct metapage**,int *) ;
 int release_metapage (struct metapage*) ;
 scalar_t__ txLinelock (struct dt_lock*) ;

__attribute__((used)) static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
     ddata_t * data, struct dt_lock ** dtlock)
{
 struct dtslot *h, *t;
 struct ldtentry *lh = ((void*)0);
 struct idtentry *ih = ((void*)0);
 int hsi, fsi, klen, len, nextindex;
 wchar_t *kname;
 __le16 *name;
 s8 *stbl;
 pxd_t *xd;
 struct dt_lock *dtlck = *dtlock;
 struct lv *lv;
 int xsi, n;
 s64 bn = 0;
 struct metapage *mp = ((void*)0);

 klen = key->namlen;
 kname = key->name;


 hsi = fsi = p->header.freelist;
 h = &p->slot[fsi];
 p->header.freelist = h->next;
 --p->header.freecnt;


 if (dtlck->index >= dtlck->maxcnt)
  dtlck = (struct dt_lock *) txLinelock(dtlck);

 lv = & dtlck->lv[dtlck->index];
 lv->offset = hsi;


 if (p->header.flag & BT_LEAF) {
  lh = (struct ldtentry *) h;
  lh->next = h->next;
  lh->inumber = cpu_to_le32(data->leaf.ino);
  lh->namlen = klen;
  name = lh->name;
  if (data->leaf.ip) {
   len = min(klen, DTLHDRDATALEN);
   if (!(p->header.flag & BT_ROOT))
    bn = addressPXD(&p->header.self);
   lh->index = cpu_to_le32(add_index(data->leaf.tid,
         data->leaf.ip,
         bn, index));
  } else
   len = min(klen, DTLHDRDATALEN_LEGACY);
 } else {
  ih = (struct idtentry *) h;
  ih->next = h->next;
  xd = (pxd_t *) ih;
  *xd = data->xd;
  ih->namlen = klen;
  name = ih->name;
  len = min(klen, DTIHDRDATALEN);
 }

 UniStrncpy_to_le(name, kname, len);

 n = 1;
 xsi = hsi;


 t = h;
 klen -= len;
 while (klen) {

  fsi = p->header.freelist;
  t = &p->slot[fsi];
  p->header.freelist = t->next;
  --p->header.freecnt;


  if (fsi != xsi + 1) {

   lv->length = n;
   dtlck->index++;


   if (dtlck->index < dtlck->maxcnt)
    lv++;
   else {
    dtlck = (struct dt_lock *) txLinelock(dtlck);
    lv = & dtlck->lv[0];
   }

   lv->offset = fsi;
   n = 0;
  }

  kname += len;
  len = min(klen, DTSLOTDATALEN);
  UniStrncpy_to_le(t->name, kname, len);

  n++;
  xsi = fsi;
  klen -= len;
 }


 lv->length = n;
 dtlck->index++;

 *dtlock = dtlck;


 if (h == t) {

  if (p->header.flag & BT_LEAF)
   lh->next = -1;
  else
   ih->next = -1;
 } else

  t->next = -1;


 stbl = DT_GETSTBL(p);
 nextindex = p->header.nextindex;
 if (index < nextindex) {
  memmove(stbl + index + 1, stbl + index, nextindex - index);

  if ((p->header.flag & BT_LEAF) && data->leaf.ip) {
   s64 lblock;





   mp = ((void*)0);
   for (n = index + 1; n <= nextindex; n++) {
    lh = (struct ldtentry *) & (p->slot[stbl[n]]);
    modify_index(data->leaf.tid, data->leaf.ip,
          le32_to_cpu(lh->index), bn, n,
          &mp, &lblock);
   }
   if (mp)
    release_metapage(mp);
  }
 }

 stbl[index] = hsi;


 ++p->header.nextindex;
}
