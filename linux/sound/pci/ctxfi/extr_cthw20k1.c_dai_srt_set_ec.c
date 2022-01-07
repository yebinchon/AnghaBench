
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srtctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dai_ctrl_blk {TYPE_2__ dirty; int srtctl; } ;


 int SRTCTL_EC ;
 int set_field (int *,int ,int) ;

__attribute__((used)) static int dai_srt_set_ec(void *blk, unsigned int ec)
{
 struct dai_ctrl_blk *ctl = blk;

 set_field(&ctl->srtctl, SRTCTL_EC, ec ? 1 : 0);
 ctl->dirty.bf.srtctl = 1;
 return 0;
}
