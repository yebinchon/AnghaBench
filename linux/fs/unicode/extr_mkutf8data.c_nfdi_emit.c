
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {int ccc; scalar_t__ utf8nfdi; int code; int gen; } ;


 void* DECOMPOSE ;
 int HANGUL ;
 scalar_t__ HANGUL_SYLLABLE (int ) ;

__attribute__((used)) static unsigned char *nfdi_emit(void *l, unsigned char *data)
{
 struct unicode_data *leaf = l;
 unsigned char *s;

 *data++ = leaf->gen;

 if (HANGUL_SYLLABLE(leaf->code)) {
  *data++ = DECOMPOSE;
  *data++ = HANGUL;
 } else if (leaf->utf8nfdi) {
  *data++ = DECOMPOSE;
  s = (unsigned char*)leaf->utf8nfdi;
  while ((*data++ = *s++) != 0)
   ;
 } else {
  *data++ = leaf->ccc;
 }
 return data;
}
