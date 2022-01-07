
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_vector {unsigned char slen; } ;


 struct key_vector* node_parent (struct key_vector*) ;

__attribute__((used)) static void node_push_suffix(struct key_vector *tn, unsigned char slen)
{
 while (tn->slen < slen) {
  tn->slen = slen;
  tn = node_parent(tn);
 }
}
