
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dmacon; TYPE_1__* aud; } ;
struct TYPE_3__ {scalar_t__ audvol; } ;


 int AMI_AUDIO_OFF ;
 TYPE_2__ custom ;
 int enable_heartbeat () ;

__attribute__((used)) static inline void StopDMA(void)
{
 custom.aud[0].audvol = custom.aud[1].audvol = 0;
 custom.aud[2].audvol = custom.aud[3].audvol = 0;
 custom.dmacon = AMI_AUDIO_OFF;
 enable_heartbeat();
}
