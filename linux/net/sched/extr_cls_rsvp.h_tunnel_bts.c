
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsvp_head {int tgenerator; int* tmap; } ;



__attribute__((used)) static int tunnel_bts(struct rsvp_head *data)
{
 int n = data->tgenerator >> 5;
 u32 b = 1 << (data->tgenerator & 0x1F);

 if (data->tmap[n] & b)
  return 0;
 data->tmap[n] |= b;
 return 1;
}
