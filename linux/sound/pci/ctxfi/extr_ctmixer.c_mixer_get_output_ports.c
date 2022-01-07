
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int dummy; } ;
struct ct_mixer {scalar_t__* amixers; } ;
struct amixer {struct rsc rsc; } ;
typedef enum MIXER_PORT_T { ____Placeholder_MIXER_PORT_T } MIXER_PORT_T ;
typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;


 int CHN_NUM ;
 int port_to_amixer (int) ;

__attribute__((used)) static int mixer_get_output_ports(struct ct_mixer *mixer,
      enum MIXER_PORT_T type,
      struct rsc **rleft, struct rsc **rright)
{
 enum CT_AMIXER_CTL amix = port_to_amixer(type);

 if (((void*)0) != rleft)
  *rleft = &((struct amixer *)mixer->amixers[amix*CHN_NUM])->rsc;

 if (((void*)0) != rright)
  *rright =
   &((struct amixer *)mixer->amixers[amix*CHN_NUM+1])->rsc;

 return 0;
}
