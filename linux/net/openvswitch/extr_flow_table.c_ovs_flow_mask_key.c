
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int start; } ;
struct sw_flow_mask {int key; TYPE_1__ range; } ;
struct sw_flow_key {int dummy; } ;


 int range_n_bytes (TYPE_1__*) ;

void ovs_flow_mask_key(struct sw_flow_key *dst, const struct sw_flow_key *src,
         bool full, const struct sw_flow_mask *mask)
{
 int start = full ? 0 : mask->range.start;
 int len = full ? sizeof *dst : range_n_bytes(&mask->range);
 const long *m = (const long *)((const u8 *)&mask->key + start);
 const long *s = (const long *)((const u8 *)src + start);
 long *d = (long *)((u8 *)dst + start);
 int i;






 for (i = 0; i < len; i += sizeof(long))
  *d++ = *s++ & *m++;
}
