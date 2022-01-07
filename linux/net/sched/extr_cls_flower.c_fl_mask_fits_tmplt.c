
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_tmplt {int mask; } ;
struct fl_flow_mask {int key; } ;


 long* fl_key_get_start (int *,struct fl_flow_mask*) ;
 int fl_mask_range (struct fl_flow_mask*) ;

__attribute__((used)) static bool fl_mask_fits_tmplt(struct fl_flow_tmplt *tmplt,
          struct fl_flow_mask *mask)
{
 const long *lmask = fl_key_get_start(&mask->key, mask);
 const long *ltmplt;
 int i;

 if (!tmplt)
  return 1;
 ltmplt = fl_key_get_start(&tmplt->mask, mask);
 for (i = 0; i < fl_mask_range(mask); i += sizeof(long)) {
  if (~*ltmplt++ & *lmask++)
   return 0;
 }
 return 1;
}
