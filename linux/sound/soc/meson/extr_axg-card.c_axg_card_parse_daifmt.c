
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int PREFIX ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_CBM_CFS ;
 unsigned int SND_SOC_DAIFMT_CBS_CFM ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int of_node_put (struct device_node*) ;
 unsigned int snd_soc_of_parse_daifmt (struct device_node*,int ,struct device_node**,struct device_node**) ;

__attribute__((used)) static unsigned int axg_card_parse_daifmt(struct device_node *node,
       struct device_node *cpu_node)
{
 struct device_node *bitclkmaster = ((void*)0);
 struct device_node *framemaster = ((void*)0);
 unsigned int daifmt;

 daifmt = snd_soc_of_parse_daifmt(node, PREFIX,
      &bitclkmaster, &framemaster);
 daifmt &= ~SND_SOC_DAIFMT_MASTER_MASK;


 if (!bitclkmaster || bitclkmaster == cpu_node) {
  daifmt |= (!framemaster || framemaster == cpu_node) ?
   SND_SOC_DAIFMT_CBS_CFS : SND_SOC_DAIFMT_CBS_CFM;
 } else {
  daifmt |= (!framemaster || framemaster == cpu_node) ?
   SND_SOC_DAIFMT_CBM_CFS : SND_SOC_DAIFMT_CBM_CFM;
 }

 of_node_put(bitclkmaster);
 of_node_put(framemaster);

 return daifmt;
}
