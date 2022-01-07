
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8k_pcm {int* loop_start; int emu; } ;


 int EMU8000_CCCA_READ (int ,int) ;

__attribute__((used)) static inline int emu8k_get_curpos(struct snd_emu8k_pcm *rec, int ch)
{
 int val = EMU8000_CCCA_READ(rec->emu, ch) & 0xfffffff;
 val -= rec->loop_start[ch] - 1;
 return val;
}
