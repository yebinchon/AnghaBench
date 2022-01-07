
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u16 ;
struct swm_input_ids {int input_id; } ;
struct snd_soc_component {int dev; } ;


 unsigned int BIT (size_t) ;
 size_t SST_CMD_SWM_MAX_INPUTS ;
 int SST_DEFAULT_MODULE_ID ;
 int SST_FILL_DESTINATION (int,int ,int ,int ) ;
 size_t SST_SWM_INPUT_COUNT ;
 int dev_dbg (int ,char*,unsigned int,...) ;
 int dev_warn (int ,char*) ;
 int * swm_mixer_input_ids ;

__attribute__((used)) static int fill_swm_input(struct snd_soc_component *cmpnt,
  struct swm_input_ids *swm_input, unsigned int reg)
{
 uint i, is_set, nb_inputs = 0;
 u16 input_loc_id;

 dev_dbg(cmpnt->dev, "reg: %#x\n", reg);
 for (i = 0; i < SST_SWM_INPUT_COUNT; i++) {
  is_set = reg & BIT(i);
  if (!is_set)
   continue;

  input_loc_id = swm_mixer_input_ids[i];
  SST_FILL_DESTINATION(2, swm_input->input_id,
         input_loc_id, SST_DEFAULT_MODULE_ID);
  nb_inputs++;
  swm_input++;
  dev_dbg(cmpnt->dev, "input id: %#x, nb_inputs: %d\n",
    input_loc_id, nb_inputs);

  if (nb_inputs == SST_CMD_SWM_MAX_INPUTS) {
   dev_warn(cmpnt->dev, "SET_SWM cmd max inputs reached");
   break;
  }
 }
 return nb_inputs;
}
