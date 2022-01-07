
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {char* ls_control_lvb; } ;
typedef char __le32 ;


 int GDLM_LVB_SIZE ;
 int le32_to_cpu (char) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void control_lvb_read(struct lm_lockstruct *ls, uint32_t *lvb_gen,
        char *lvb_bits)
{
 __le32 gen;
 memcpy(lvb_bits, ls->ls_control_lvb, GDLM_LVB_SIZE);
 memcpy(&gen, lvb_bits, sizeof(__le32));
 *lvb_gen = le32_to_cpu(gen);
}
