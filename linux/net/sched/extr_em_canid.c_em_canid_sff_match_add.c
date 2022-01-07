
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct canid_match {int match_sff; } ;


 int CAN_SFF_ID_BITS ;
 int CAN_SFF_MASK ;
 int bitmap_fill (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void em_canid_sff_match_add(struct canid_match *cm, u32 can_id,
     u32 can_mask)
{
 int i;





 can_mask &= CAN_SFF_MASK;
 can_id &= can_mask;


 if (can_mask == CAN_SFF_MASK) {
  set_bit(can_id, cm->match_sff);
  return;
 }


 if (can_mask == 0) {
  bitmap_fill(cm->match_sff, (1 << CAN_SFF_ID_BITS));
  return;
 }






 for (i = 0; i < (1 << CAN_SFF_ID_BITS); i++) {
  if ((i & can_mask) == can_id)
   set_bit(i, cm->match_sff);
 }
}
