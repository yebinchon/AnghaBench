
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
struct TYPE_2__ {int start; } ;
struct fl_flow_mask {TYPE_1__ range; } ;
struct fl_flow_key {int dummy; } ;



__attribute__((used)) static void *fl_key_get_start(struct fl_flow_key *key,
         const struct fl_flow_mask *mask)
{
 return (u8 *) key + mask->range.start;
}
