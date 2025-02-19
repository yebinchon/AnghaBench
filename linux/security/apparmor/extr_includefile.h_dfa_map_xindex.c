
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int AA_X_CHILD ;
 int AA_X_INHERIT ;
 int AA_X_NAME ;
 int AA_X_TABLE ;
 int AA_X_UNCONFINED ;
 int AA_X_UNSAFE ;

__attribute__((used)) static inline u16 dfa_map_xindex(u16 mask)
{
 u16 old_index = (mask >> 10) & 0xf;
 u16 index = 0;

 if (mask & 0x100)
  index |= AA_X_UNSAFE;
 if (mask & 0x200)
  index |= AA_X_INHERIT;
 if (mask & 0x80)
  index |= AA_X_UNCONFINED;

 if (old_index == 1) {
  index |= AA_X_UNCONFINED;
 } else if (old_index == 2) {
  index |= AA_X_NAME;
 } else if (old_index == 3) {
  index |= AA_X_NAME | AA_X_CHILD;
 } else if (old_index) {
  index |= AA_X_TABLE;
  index |= old_index - 4;
 }

 return index;
}
