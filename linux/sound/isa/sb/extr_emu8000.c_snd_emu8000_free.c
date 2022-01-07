
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int res_port3; int res_port2; int res_port1; } ;


 int kfree (struct snd_emu8000*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static int snd_emu8000_free(struct snd_emu8000 *hw)
{
 release_and_free_resource(hw->res_port1);
 release_and_free_resource(hw->res_port2);
 release_and_free_resource(hw->res_port3);
 kfree(hw);
 return 0;
}
