
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {int ls_control_lvb; } ;
typedef char __le32 ;


 int GDLM_LVB_SIZE ;
 char cpu_to_le32 (int ) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static void control_lvb_write(struct lm_lockstruct *ls, uint32_t lvb_gen,
         char *lvb_bits)
{
 __le32 gen;
 memcpy(ls->ls_control_lvb, lvb_bits, GDLM_LVB_SIZE);
 gen = cpu_to_le32(lvb_gen);
 memcpy(ls->ls_control_lvb, &gen, sizeof(__le32));
}
