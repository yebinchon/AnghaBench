
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {int name; } ;


 int MIC_CRASHED ;
 int MIC_HALTED ;
 int MIC_NOP ;
 int MIC_POWER_OFF ;
 int MIC_RESTART ;
 int assert (int ) ;
 int mpsslog (char*,int ,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
get_mic_shutdown_status(struct mic_info *mic, char *shutdown_status)
{
 if (!strcmp(shutdown_status, "nop"))
  return MIC_NOP;
 if (!strcmp(shutdown_status, "crashed"))
  return MIC_CRASHED;
 if (!strcmp(shutdown_status, "halted"))
  return MIC_HALTED;
 if (!strcmp(shutdown_status, "poweroff"))
  return MIC_POWER_OFF;
 if (!strcmp(shutdown_status, "restart"))
  return MIC_RESTART;
 mpsslog("%s: BUG invalid status %s\n", mic->name, shutdown_status);

 assert(0);
}
