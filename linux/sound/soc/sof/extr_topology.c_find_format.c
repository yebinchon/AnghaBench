
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum sof_ipc_frame { ____Placeholder_sof_ipc_frame } sof_ipc_frame ;
struct TYPE_3__ {int frame; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SOF_IPC_FRAME_S32_LE ;
 TYPE_1__* sof_frames ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static enum sof_ipc_frame find_format(const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sof_frames); i++) {
  if (strcmp(name, sof_frames[i].name) == 0)
   return sof_frames[i].frame;
 }


 return SOF_IPC_FRAME_S32_LE;
}
