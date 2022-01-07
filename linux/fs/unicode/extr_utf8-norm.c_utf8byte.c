
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int utf8leaf_t ;
struct utf8cursor {char* p; char* s; scalar_t__ len; int ccc; int nccc; scalar_t__ sp; int* ss; scalar_t__ slen; int hangul; TYPE_1__* data; } ;
struct TYPE_3__ {scalar_t__ maxage; } ;


 int DECOMPOSE ;
 int LEAF_CCC (int *) ;
 size_t LEAF_GEN (int *) ;
 int* LEAF_STR (int *) ;
 int MAXCCC ;
 int MINCCC ;
 int STOPPER ;
 scalar_t__* utf8agetab ;
 scalar_t__ utf8clen (int*) ;
 int * utf8lookup (TYPE_1__*,int ,int*) ;
 int * utf8nlookup (TYPE_1__*,int ,int*,scalar_t__) ;

int utf8byte(struct utf8cursor *u8c)
{
 utf8leaf_t *leaf;
 int ccc;

 for (;;) {

  if (u8c->p && *u8c->s == '\0') {
   u8c->s = u8c->p;
   u8c->p = ((void*)0);
  }


  if (!u8c->p && (u8c->len == 0 || *u8c->s == '\0')) {

   if (u8c->ccc == STOPPER)
    return 0;

   ccc = STOPPER;
   goto ccc_mismatch;
  } else if ((*u8c->s & 0xC0) == 0x80) {

   if (!u8c->p)
    u8c->len--;
   return (unsigned char)*u8c->s++;
  }


  if (u8c->p) {
   leaf = utf8lookup(u8c->data, u8c->hangul, u8c->s);
  } else {
   leaf = utf8nlookup(u8c->data, u8c->hangul,
        u8c->s, u8c->len);
  }


  if (!leaf)
   return -1;

  ccc = LEAF_CCC(leaf);

  if (utf8agetab[LEAF_GEN(leaf)] > u8c->data->maxage) {
   ccc = STOPPER;
  } else if (ccc == DECOMPOSE) {
   u8c->len -= utf8clen(u8c->s);
   u8c->p = u8c->s + utf8clen(u8c->s);
   u8c->s = LEAF_STR(leaf);

   if (*u8c->s == '\0') {
    if (u8c->ccc == STOPPER)
     continue;
    ccc = STOPPER;
    goto ccc_mismatch;
   }

   leaf = utf8lookup(u8c->data, u8c->hangul, u8c->s);
   if (!leaf)
    return -1;
   ccc = LEAF_CCC(leaf);
  }





  if (ccc != STOPPER && u8c->ccc < ccc && ccc < u8c->nccc)
   u8c->nccc = ccc;





  if (ccc == u8c->ccc) {
   if (!u8c->p)
    u8c->len--;
   return (unsigned char)*u8c->s++;
  }


ccc_mismatch:
  if (u8c->nccc == STOPPER) {





   u8c->ccc = MINCCC - 1;
   u8c->nccc = ccc;
   u8c->sp = u8c->p;
   u8c->ss = u8c->s;
   u8c->slen = u8c->len;
   if (!u8c->p)
    u8c->len -= utf8clen(u8c->s);
   u8c->s += utf8clen(u8c->s);
  } else if (ccc != STOPPER) {

   if (!u8c->p)
    u8c->len -= utf8clen(u8c->s);
   u8c->s += utf8clen(u8c->s);
  } else if (u8c->nccc != MAXCCC + 1) {

   u8c->ccc = u8c->nccc;
   u8c->nccc = MAXCCC + 1;
   u8c->s = u8c->ss;
   u8c->p = u8c->sp;
   u8c->len = u8c->slen;
  } else {

   u8c->ccc = STOPPER;
   u8c->nccc = STOPPER;
   u8c->sp = ((void*)0);
   u8c->ss = ((void*)0);
   u8c->slen = 0;
  }
 }
}
