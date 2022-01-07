
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HDA_DSP_IPC_PURGE_FW ;

__attribute__((used)) static bool hda_dsp_ipc_is_sof(uint32_t msg)
{
 return (msg & (HDA_DSP_IPC_PURGE_FW | 0xf << 9)) != msg ||
  (msg & HDA_DSP_IPC_PURGE_FW) != HDA_DSP_IPC_PURGE_FW;
}
