
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_dissector {int used_keys; } ;
typedef enum flow_dissector_key_id { ____Placeholder_flow_dissector_key_id } flow_dissector_key_id ;



__attribute__((used)) static void dissector_set_key(struct flow_dissector *flow_dissector,
         enum flow_dissector_key_id key_id)
{
 flow_dissector->used_keys |= (1 << key_id);
}
