
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_mixer {int resume; int set_input_right; int set_input_left; int get_output_ports; struct ct_atc* atc; scalar_t__ switch_state; } ;
struct ct_atc {int dummy; } ;


 int ct_mixer_destroy (struct ct_mixer*) ;
 int ct_mixer_get_mem (struct ct_mixer**) ;
 int ct_mixer_get_resources (struct ct_mixer*) ;
 int ct_mixer_topology_build (struct ct_mixer*) ;
 int mixer_get_output_ports ;
 int mixer_resume ;
 int mixer_set_input_left ;
 int mixer_set_input_right ;

int ct_mixer_create(struct ct_atc *atc, struct ct_mixer **rmixer)
{
 struct ct_mixer *mixer;
 int err;

 *rmixer = ((void*)0);


 err = ct_mixer_get_mem(&mixer);
 if (err)
  return err;

 mixer->switch_state = 0;
 mixer->atc = atc;

 mixer->get_output_ports = mixer_get_output_ports;
 mixer->set_input_left = mixer_set_input_left;
 mixer->set_input_right = mixer_set_input_right;





 err = ct_mixer_get_resources(mixer);
 if (err)
  goto error;


 ct_mixer_topology_build(mixer);

 *rmixer = mixer;

 return 0;

error:
 ct_mixer_destroy(mixer);
 return err;
}
