
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_rmh {int * cmd; } ;
struct pcxhr_mgr {int dsp_loaded; int is_hr_stereo; } ;


 int CMD_ACCESS_IO_WRITE ;
 int IO_NUM_REG_MUTE_OUT ;
 int PCXHR_FIRMWARE_DSP_EPRM_INDEX ;
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int PCXHR_FIRMWARE_XLX_COM_INDEX ;
 int REG_CONT_UNMUTE_INPUTS ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_reset_dsp (struct pcxhr_mgr*) ;
 int pcxhr_reset_xilinx_com (struct pcxhr_mgr*) ;
 int pcxhr_send_msg (struct pcxhr_mgr*,struct pcxhr_rmh*) ;
 int pcxhr_write_io_num_reg_cont (struct pcxhr_mgr*,int ,int ,int *) ;

void pcxhr_reset_board(struct pcxhr_mgr *mgr)
{
 struct pcxhr_rmh rmh;

 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)) {

     if (!mgr->is_hr_stereo) {

  pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
  rmh.cmd[0] |= IO_NUM_REG_MUTE_OUT;
  pcxhr_send_msg(mgr, &rmh);

  pcxhr_write_io_num_reg_cont(mgr, REG_CONT_UNMUTE_INPUTS,
         0, ((void*)0));
     }

 }

 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_EPRM_INDEX))
  pcxhr_reset_dsp(mgr);

 if (mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_XLX_COM_INDEX)) {
  pcxhr_reset_xilinx_com(mgr);
  mgr->dsp_loaded = 1;
 }
 return;
}
