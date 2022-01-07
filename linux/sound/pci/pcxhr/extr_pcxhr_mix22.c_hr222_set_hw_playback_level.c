
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 unsigned short AKM_LEFT_LEVEL_CMD ;
 unsigned short AKM_RIGHT_LEVEL_CMD ;
 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 scalar_t__* g_hr222_p_level ;
 int hr222_config_akm (struct pcxhr_mgr*,unsigned short) ;

__attribute__((used)) static int hr222_set_hw_playback_level(struct pcxhr_mgr *mgr,
           int idx, int level)
{
 unsigned short cmd;
 if (idx > 1 ||
     level < 0 ||
     level >= ARRAY_SIZE(g_hr222_p_level))
  return -EINVAL;

 if (idx == 0)
  cmd = AKM_LEFT_LEVEL_CMD;
 else
  cmd = AKM_RIGHT_LEVEL_CMD;


 cmd += g_hr222_p_level[level];

 hr222_config_akm(mgr, cmd);
 return 0;
}
