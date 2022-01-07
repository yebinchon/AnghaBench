
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_element {int priv_data; int tlv_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;


 int kfree (struct user_element*) ;
 int kvfree (int ) ;

__attribute__((used)) static void snd_ctl_elem_user_free(struct snd_kcontrol *kcontrol)
{
 struct user_element *ue = kcontrol->private_data;

 kvfree(ue->tlv_data);
 kvfree(ue->priv_data);
 kfree(ue);
}
