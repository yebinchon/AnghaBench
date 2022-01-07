
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_client {int dummy; } ;


 int __q6asm_cmd (struct audio_client*,int,int) ;

int q6asm_cmd(struct audio_client *ac, int cmd)
{
 return __q6asm_cmd(ac, cmd, 1);
}
