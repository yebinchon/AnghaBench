
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srt; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dai_ctrl_blk {TYPE_2__ dirty; int srt; } ;


 int SRTCTL_SRCM ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int dai_srt_set_srcm(void *blk, unsigned int src)
{
 struct dai_ctrl_blk *ctl = blk;

 set_field(&ctl->srt, SRTCTL_SRCM, src);
 ctl->dirty.bf.srt = 1;
 return 0;
}
