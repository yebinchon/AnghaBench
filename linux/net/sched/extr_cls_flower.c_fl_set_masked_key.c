
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_key {int dummy; } ;
struct fl_flow_mask {struct fl_flow_key key; } ;


 void* fl_key_get_start (struct fl_flow_key*,struct fl_flow_mask*) ;
 int fl_mask_range (struct fl_flow_mask*) ;

__attribute__((used)) static void fl_set_masked_key(struct fl_flow_key *mkey, struct fl_flow_key *key,
         struct fl_flow_mask *mask)
{
 const long *lkey = fl_key_get_start(key, mask);
 const long *lmask = fl_key_get_start(&mask->key, mask);
 long *lmkey = fl_key_get_start(mkey, mask);
 int i;

 for (i = 0; i < fl_mask_range(mask); i += sizeof(long))
  *lmkey++ = *lkey++ & *lmask++;
}
