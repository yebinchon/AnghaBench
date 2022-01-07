
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_aesebu_receiver_get_error_status (int ,int *) ;
 int hpi_handle_error (int ) ;

__attribute__((used)) static int snd_asihpi_aesebu_rxstatus_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol) {

 u32 h_control = kcontrol->private_value;
 u16 status;

 hpi_handle_error(hpi_aesebu_receiver_get_error_status(
      h_control, &status));
 ucontrol->value.integer.value[0] = status;
 return 0;
}
