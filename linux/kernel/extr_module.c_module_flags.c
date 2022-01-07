
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ state; scalar_t__ taints; } ;


 int BUG_ON (int) ;
 scalar_t__ MODULE_STATE_COMING ;
 scalar_t__ MODULE_STATE_GOING ;
 scalar_t__ MODULE_STATE_UNFORMED ;
 scalar_t__ module_flags_taint (struct module*,char*) ;

__attribute__((used)) static char *module_flags(struct module *mod, char *buf)
{
 int bx = 0;

 BUG_ON(mod->state == MODULE_STATE_UNFORMED);
 if (mod->taints ||
     mod->state == MODULE_STATE_GOING ||
     mod->state == MODULE_STATE_COMING) {
  buf[bx++] = '(';
  bx += module_flags_taint(mod, buf + bx);

  if (mod->state == MODULE_STATE_GOING)
   buf[bx++] = '-';

  if (mod->state == MODULE_STATE_COMING)
   buf[bx++] = '+';
  buf[bx++] = ')';
 }
 buf[bx] = '\0';

 return buf;
}
