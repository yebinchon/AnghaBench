
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dram_checked; int mem_size; int port1; } ;


 scalar_t__ EMU8000_DRAM_OFFSET ;
 int EMU8000_MAX_DRAM ;
 int EMU8000_RAM_CLOSE ;
 int EMU8000_RAM_READ ;
 int EMU8000_RAM_WRITE ;
 int EMU8000_SMALR_WRITE (struct snd_emu8000*,scalar_t__) ;
 int EMU8000_SMALW_READ (struct snd_emu8000*) ;
 int EMU8000_SMALW_WRITE (struct snd_emu8000*,scalar_t__) ;
 scalar_t__ EMU8000_SMLD_READ (struct snd_emu8000*) ;
 int EMU8000_SMLD_WRITE (struct snd_emu8000*,scalar_t__) ;
 scalar_t__ UNIQUE_ID1 ;
 scalar_t__ UNIQUE_ID2 ;
 int current ;
 int pr_info (char*,int ,int) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 int snd_emu8000_dma_chan (struct snd_emu8000*,int,int ) ;
 int snd_emu8000_init_fm (struct snd_emu8000*) ;
 int snd_emu8000_read_wait (struct snd_emu8000*) ;
 int snd_emu8000_write_wait (struct snd_emu8000*) ;

__attribute__((used)) static void
size_dram(struct snd_emu8000 *emu)
{
 int i, size;

 if (emu->dram_checked)
  return;

 size = 0;


 snd_emu8000_dma_chan(emu, 0, EMU8000_RAM_WRITE);
 snd_emu8000_dma_chan(emu, 1, EMU8000_RAM_READ);
 EMU8000_SMALW_WRITE(emu, EMU8000_DRAM_OFFSET);
 EMU8000_SMLD_WRITE(emu, UNIQUE_ID1);
 snd_emu8000_init_fm(emu);
 snd_emu8000_write_wait(emu);





 EMU8000_SMALR_WRITE(emu, EMU8000_DRAM_OFFSET);
 EMU8000_SMLD_READ(emu);
 if (EMU8000_SMLD_READ(emu) != UNIQUE_ID1)
  goto skip_detect;
 snd_emu8000_read_wait(emu);

 for (size = 512 * 1024; size < EMU8000_MAX_DRAM; size += 512 * 1024) {







  EMU8000_SMALW_WRITE(emu, EMU8000_DRAM_OFFSET + (size>>1));
  EMU8000_SMLD_WRITE(emu, UNIQUE_ID2);
  snd_emu8000_write_wait(emu);






  EMU8000_SMALR_WRITE(emu, EMU8000_DRAM_OFFSET + (size>>1));

  EMU8000_SMLD_READ(emu);
  if (EMU8000_SMLD_READ(emu) != UNIQUE_ID2)
   break;
  snd_emu8000_read_wait(emu);






  EMU8000_SMALR_WRITE(emu, EMU8000_DRAM_OFFSET);
  EMU8000_SMLD_READ(emu);
  if (EMU8000_SMLD_READ(emu) != UNIQUE_ID1)
   break;
  snd_emu8000_read_wait(emu);


 }

skip_detect:

 for (i = 0; i < 10000; i++) {
  if ((EMU8000_SMALW_READ(emu) & 0x80000000) == 0)
   break;
  schedule_timeout_interruptible(1);
  if (signal_pending(current))
   break;
 }
 snd_emu8000_dma_chan(emu, 0, EMU8000_RAM_CLOSE);
 snd_emu8000_dma_chan(emu, 1, EMU8000_RAM_CLOSE);

 pr_info("EMU8000 [0x%lx]: %d KiB on-board DRAM detected\n",
      emu->port1, size/1024);

 emu->mem_size = size;
 emu->dram_checked = 1;
}
