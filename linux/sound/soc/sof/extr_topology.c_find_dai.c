
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum sof_ipc_dai_type { ____Placeholder_sof_ipc_dai_type } sof_ipc_dai_type ;
struct TYPE_3__ {int type; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SOF_DAI_INTEL_NONE ;
 TYPE_1__* sof_dais ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static enum sof_ipc_dai_type find_dai(const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sof_dais); i++) {
  if (strcmp(name, sof_dais[i].name) == 0)
   return sof_dais[i].type;
 }

 return SOF_DAI_INTEL_NONE;
}
