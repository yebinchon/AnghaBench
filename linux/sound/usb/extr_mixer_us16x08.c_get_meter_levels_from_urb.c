
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_us16x08_meter_store {int* meter_level; int* comp_level; int* master_level; } ;


 int MUA0 (int *,int) ;
 int MUA1 (int *,int) ;
 int MUA2 (int *,int) ;
 int MUB0 (int *,int) ;
 int MUB2 (int *,int) ;
 int MUC0 (int *,int) ;
 int MUC2 (int *,int) ;
 int MUC3 (int *,int) ;

__attribute__((used)) static void get_meter_levels_from_urb(int s,
 struct snd_us16x08_meter_store *store,
 u8 *meter_urb)
{
 int val = MUC2(meter_urb, s) + (MUC3(meter_urb, s) << 8);

 if (MUA0(meter_urb, s) == 0x61 && MUA1(meter_urb, s) == 0x02 &&
  MUA2(meter_urb, s) == 0x04 && MUB0(meter_urb, s) == 0x62) {
  if (MUC0(meter_urb, s) == 0x72)
   store->meter_level[MUB2(meter_urb, s) - 1] = val;
  if (MUC0(meter_urb, s) == 0xb2)
   store->comp_level[MUB2(meter_urb, s) - 1] = val;
 }
 if (MUA0(meter_urb, s) == 0x61 && MUA1(meter_urb, s) == 0x02 &&
  MUA2(meter_urb, s) == 0x02 && MUB0(meter_urb, s) == 0x62)
  store->master_level[MUB2(meter_urb, s) - 1] = val;
}
