
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_vector {unsigned char slen; unsigned char pos; } ;


 struct key_vector* node_parent (struct key_vector*) ;
 unsigned char update_suffix (struct key_vector*) ;

__attribute__((used)) static void node_pull_suffix(struct key_vector *tn, unsigned char slen)
{
 unsigned char node_slen = tn->slen;

 while ((node_slen > tn->pos) && (node_slen > slen)) {
  slen = update_suffix(tn);
  if (node_slen == slen)
   break;

  tn = node_parent(tn);
  node_slen = tn->slen;
 }
}
