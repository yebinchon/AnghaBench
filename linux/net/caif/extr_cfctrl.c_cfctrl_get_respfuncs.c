
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {int dummy; } ;
struct cfctrl_rsp {int dummy; } ;
struct cfctrl {struct cfctrl_rsp res; } ;


 struct cfctrl* container_obj (struct cflayer*) ;

struct cfctrl_rsp *cfctrl_get_respfuncs(struct cflayer *layer)
{
 struct cfctrl *this = container_obj(layer);
 return &this->res;
}
