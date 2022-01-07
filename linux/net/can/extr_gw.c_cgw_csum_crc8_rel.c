
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cgw_csum_crc8 {int from_idx; int to_idx; int result_idx; size_t init_crc_val; size_t* crctab; int profile; size_t* profile_data; size_t final_xor_val; } ;
struct canfd_frame {size_t* data; int can_id; int len; } ;





 int calc_idx (int,int ) ;

__attribute__((used)) static void cgw_csum_crc8_rel(struct canfd_frame *cf,
         struct cgw_csum_crc8 *crc8)
{
 int from = calc_idx(crc8->from_idx, cf->len);
 int to = calc_idx(crc8->to_idx, cf->len);
 int res = calc_idx(crc8->result_idx, cf->len);
 u8 crc = crc8->init_crc_val;
 int i;

 if (from < 0 || to < 0 || res < 0)
  return;

 if (from <= to) {
  for (i = crc8->from_idx; i <= crc8->to_idx; i++)
   crc = crc8->crctab[crc ^ cf->data[i]];
 } else {
  for (i = crc8->from_idx; i >= crc8->to_idx; i--)
   crc = crc8->crctab[crc ^ cf->data[i]];
 }

 switch (crc8->profile) {
 case 129:
  crc = crc8->crctab[crc ^ crc8->profile_data[0]];
  break;

 case 130:
  crc = crc8->crctab[crc ^ crc8->profile_data[cf->data[1] & 0xF]];
  break;

 case 128:
  crc = crc8->crctab[crc ^ (cf->can_id & 0xFF) ^
       (cf->can_id >> 8 & 0xFF)];
  break;
 }

 cf->data[crc8->result_idx] = crc ^ crc8->final_xor_val;
}
