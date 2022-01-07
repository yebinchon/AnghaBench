
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;


 int __rsnd_dmaen_complete ;
 int rsnd_mod_interrupt (struct rsnd_mod*,int ) ;

__attribute__((used)) static void rsnd_dmaen_complete(void *data)
{
 struct rsnd_mod *mod = data;

 rsnd_mod_interrupt(mod, __rsnd_dmaen_complete);
}
