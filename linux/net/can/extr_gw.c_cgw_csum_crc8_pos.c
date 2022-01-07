
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cgw_csum_crc8 {size_t init_crc_val; int from_idx; int to_idx; size_t* crctab; int profile; size_t* profile_data; size_t result_idx; size_t final_xor_val; } ;
struct canfd_frame {size_t* data; int can_id; } ;






__attribute__((used)) static void cgw_csum_crc8_pos(struct canfd_frame *cf,
         struct cgw_csum_crc8 *crc8)
{
 u8 crc = crc8->init_crc_val;
 int i;

 for (i = crc8->from_idx; i <= crc8->to_idx; i++)
  crc = crc8->crctab[crc ^ cf->data[i]];

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
