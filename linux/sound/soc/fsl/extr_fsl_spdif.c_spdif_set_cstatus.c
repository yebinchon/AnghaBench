
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spdif_mixer_control {int* ch_status; } ;



__attribute__((used)) static void spdif_set_cstatus(struct spdif_mixer_control *ctrl,
    u8 mask, u8 cstatus)
{
 ctrl->ch_status[3] &= ~mask;
 ctrl->ch_status[3] |= cstatus & mask;
}
