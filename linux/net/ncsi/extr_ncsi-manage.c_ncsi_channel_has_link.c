
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncsi_channel {TYPE_1__* modes; } ;
struct TYPE_2__ {int* data; } ;


 size_t NCSI_MODE_LINK ;

bool ncsi_channel_has_link(struct ncsi_channel *channel)
{
 return !!(channel->modes[NCSI_MODE_LINK].data[2] & 0x1);
}
