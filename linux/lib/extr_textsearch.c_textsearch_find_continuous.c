
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_state {scalar_t__ cb; } ;
struct ts_linear_state {unsigned int len; void const* data; } ;
struct ts_config {int get_next_block; } ;


 int get_linear_data ;
 unsigned int textsearch_find (struct ts_config*,struct ts_state*) ;

unsigned int textsearch_find_continuous(struct ts_config *conf,
     struct ts_state *state,
     const void *data, unsigned int len)
{
 struct ts_linear_state *st = (struct ts_linear_state *) state->cb;

 conf->get_next_block = get_linear_data;
 st->data = data;
 st->len = len;

 return textsearch_find(conf, state);
}
