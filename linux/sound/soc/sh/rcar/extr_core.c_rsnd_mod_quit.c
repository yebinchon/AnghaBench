
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int * clk; } ;


 int clk_unprepare (int *) ;

void rsnd_mod_quit(struct rsnd_mod *mod)
{
 clk_unprepare(mod->clk);
 mod->clk = ((void*)0);
}
