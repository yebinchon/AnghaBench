
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_finder {int cu_die; } ;
struct dwarf_callback_param {void* data; int retval; } ;


 int dwarf_getfuncs (int *,int ,struct dwarf_callback_param*,int ) ;
 int line_range_search_cb ;

__attribute__((used)) static int find_line_range_by_func(struct line_finder *lf)
{
 struct dwarf_callback_param param = {.data = (void *)lf, .retval = 0};
 dwarf_getfuncs(&lf->cu_die, line_range_search_cb, &param, 0);
 return param.retval;
}
