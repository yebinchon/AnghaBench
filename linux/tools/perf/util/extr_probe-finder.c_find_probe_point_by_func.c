
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_finder {int cu_die; } ;
struct dwarf_callback_param {void* data; int retval; } ;


 int dwarf_getfuncs (int *,int ,struct dwarf_callback_param*,int ) ;
 int probe_point_search_cb ;

__attribute__((used)) static int find_probe_point_by_func(struct probe_finder *pf)
{
 struct dwarf_callback_param _param = {.data = (void *)pf,
           .retval = 0};
 dwarf_getfuncs(&pf->cu_die, probe_point_search_cb, &_param, 0);
 return _param.retval;
}
