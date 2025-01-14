
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int DSP_DBGCNTL_EXEC_LOBIT ;
 unsigned int DSP_DBGCNTL_EXEC_MASK ;
 int DSP_DBGCNTL_INST_OFFSET ;
 unsigned int DSP_DBGCNTL_SS_LOBIT ;
 unsigned int DSP_DBGCNTL_SS_MASK ;
 unsigned int DSP_DBGCNTL_STATE_LOBIT ;
 unsigned int DSP_DBGCNTL_STATE_MASK ;
 int chipio_read (struct hda_codec*,int ,unsigned int*) ;
 int chipio_write (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static int dsp_set_run_state(struct hda_codec *codec)
{
 unsigned int dbg_ctrl_reg;
 unsigned int halt_state;
 int err;

 err = chipio_read(codec, DSP_DBGCNTL_INST_OFFSET, &dbg_ctrl_reg);
 if (err < 0)
  return err;

 halt_state = (dbg_ctrl_reg & DSP_DBGCNTL_STATE_MASK) >>
        DSP_DBGCNTL_STATE_LOBIT;

 if (halt_state != 0) {
  dbg_ctrl_reg &= ~((halt_state << DSP_DBGCNTL_SS_LOBIT) &
      DSP_DBGCNTL_SS_MASK);
  err = chipio_write(codec, DSP_DBGCNTL_INST_OFFSET,
       dbg_ctrl_reg);
  if (err < 0)
   return err;

  dbg_ctrl_reg |= (halt_state << DSP_DBGCNTL_EXEC_LOBIT) &
    DSP_DBGCNTL_EXEC_MASK;
  err = chipio_write(codec, DSP_DBGCNTL_INST_OFFSET,
       dbg_ctrl_reg);
  if (err < 0)
   return err;
 }

 return 0;
}
