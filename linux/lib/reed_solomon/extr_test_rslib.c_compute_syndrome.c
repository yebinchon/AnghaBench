
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct rs_control {struct rs_codec* codec; } ;
struct rs_codec {size_t* alpha_to; size_t* index_of; int nroots; int prim; int fcr; } ;


 size_t rs_modnn (struct rs_codec*,size_t) ;

__attribute__((used)) static void compute_syndrome(struct rs_control *rsc, uint16_t *data,
    int len, uint16_t *syn)
{
 struct rs_codec *rs = rsc->codec;
 uint16_t *alpha_to = rs->alpha_to;
 uint16_t *index_of = rs->index_of;
 int nroots = rs->nroots;
 int prim = rs->prim;
 int fcr = rs->fcr;
 int i, j;


 for (i = 0; i < nroots; i++) {
  syn[i] = data[0];
  for (j = 1; j < len; j++) {
   if (syn[i] == 0) {
    syn[i] = data[j];
   } else {
    syn[i] = data[j] ^
     alpha_to[rs_modnn(rs, index_of[syn[i]]
      + (fcr + i) * prim)];
   }
  }
 }


 for (i = 0; i < nroots; i++)
  syn[i] = rs->index_of[syn[i]];
}
