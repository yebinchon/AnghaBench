
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_intelhad {int dummy; } ;


 int AUD_BUF_ADDR (int) ;
 int AUD_BUF_LEN (int) ;
 int had_write_register (struct snd_intelhad*,int ,int ) ;

__attribute__((used)) static void had_invalidate_bd(struct snd_intelhad *intelhaddata,
         int idx)
{
 had_write_register(intelhaddata, AUD_BUF_ADDR(idx), 0);
 had_write_register(intelhaddata, AUD_BUF_LEN(idx), 0);
}
