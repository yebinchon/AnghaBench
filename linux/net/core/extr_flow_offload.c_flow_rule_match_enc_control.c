
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_rule {int dummy; } ;
struct flow_match_control {int dummy; } ;


 int FLOW_DISSECTOR_KEY_ENC_CONTROL ;
 int FLOW_DISSECTOR_MATCH (struct flow_rule const*,int ,struct flow_match_control*) ;

void flow_rule_match_enc_control(const struct flow_rule *rule,
     struct flow_match_control *out)
{
 FLOW_DISSECTOR_MATCH(rule, FLOW_DISSECTOR_KEY_ENC_CONTROL, out);
}
