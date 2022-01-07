
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STA_UNSYNC ;
 int time_status ;

__attribute__((used)) static inline int ntp_synced(void)
{
 return !(time_status & STA_UNSYNC);
}
