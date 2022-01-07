
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yaml_event_t ;
typedef int yaml_emitter_t ;
typedef int yaml_char_t ;


 int YAML_DOUBLE_QUOTED_SCALAR_STYLE ;
 scalar_t__ YAML_STR_TAG ;
 int assert (int) ;
 int isascii (char) ;
 int yaml_emitter_emit_or_die (int *,int *) ;
 int yaml_scalar_event_initialize (int *,int *,int *,int *,int,int ,int,int ) ;

__attribute__((used)) static void yaml_propval_string(yaml_emitter_t *emitter, char *str, int len)
{
 yaml_event_t event;
 int i;

 assert(str[len-1] == '\0');


 for (i = 0; i < len; i++)
  assert(isascii(str[i]));

 yaml_scalar_event_initialize(&event, ((void*)0),
  (yaml_char_t *)YAML_STR_TAG, (yaml_char_t*)str,
  len-1, 0, 1, YAML_DOUBLE_QUOTED_SCALAR_STYLE);
 yaml_emitter_emit_or_die(emitter, &event);
}
