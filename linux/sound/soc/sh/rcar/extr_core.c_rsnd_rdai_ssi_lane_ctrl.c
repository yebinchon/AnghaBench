
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai {int ssi_lane; } ;



int rsnd_rdai_ssi_lane_ctrl(struct rsnd_dai *rdai,
       int ssi_lane)
{
 if (ssi_lane > 0)
  rdai->ssi_lane = ssi_lane;

 return rdai->ssi_lane;
}
