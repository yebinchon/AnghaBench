
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srt; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dai_ctrl_blk {TYPE_2__ dirty; int srt; } ;


 int SRTCTL_ET ;
 int set_field (int *,int ,int) ;

__attribute__((used)) static int dai_srt_set_et(void *blk, unsigned int et)
{
 struct dai_ctrl_blk *ctl = blk;

 set_field(&ctl->srt, SRTCTL_ET, et ? 1 : 0);
 ctl->dirty.bf.srt = 1;
 return 0;
}
