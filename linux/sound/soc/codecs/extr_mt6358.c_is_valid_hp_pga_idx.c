
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DL_GAIN_8DB ;
 int DL_GAIN_N_10DB ;
 int DL_GAIN_N_40DB ;

__attribute__((used)) static bool is_valid_hp_pga_idx(int reg_idx)
{
 return (reg_idx >= DL_GAIN_8DB && reg_idx <= DL_GAIN_N_10DB) ||
        reg_idx == DL_GAIN_N_40DB;
}
