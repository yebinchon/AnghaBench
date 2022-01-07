
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __rsnd_src_interrupt ;
 int rsnd_mod_interrupt (struct rsnd_mod*,int ) ;

__attribute__((used)) static irqreturn_t rsnd_src_interrupt(int irq, void *data)
{
 struct rsnd_mod *mod = data;

 rsnd_mod_interrupt(mod, __rsnd_src_interrupt);

 return IRQ_HANDLED;
}
