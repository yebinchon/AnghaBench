
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum sof_ipc_process_type { ____Placeholder_sof_ipc_process_type } sof_ipc_process_type ;
typedef enum sof_comp_type { ____Placeholder_sof_comp_type } sof_comp_type ;
struct TYPE_3__ {int type; int comp_type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SOF_COMP_NONE ;
 TYPE_1__* sof_process ;

__attribute__((used)) static enum sof_comp_type find_process_comp_type(enum sof_ipc_process_type type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sof_process); i++) {
  if (sof_process[i].type == type)
   return sof_process[i].comp_type;
 }

 return SOF_COMP_NONE;
}
