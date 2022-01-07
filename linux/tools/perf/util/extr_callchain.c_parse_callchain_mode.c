
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;


 int CHAIN_FLAT ;
 int CHAIN_FOLDED ;
 int CHAIN_GRAPH_ABS ;
 int CHAIN_GRAPH_REL ;
 TYPE_1__ callchain_param ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int parse_callchain_mode(const char *value)
{
 if (!strncmp(value, "graph", strlen(value))) {
  callchain_param.mode = CHAIN_GRAPH_ABS;
  return 0;
 }
 if (!strncmp(value, "flat", strlen(value))) {
  callchain_param.mode = CHAIN_FLAT;
  return 0;
 }
 if (!strncmp(value, "fractal", strlen(value))) {
  callchain_param.mode = CHAIN_GRAPH_REL;
  return 0;
 }
 if (!strncmp(value, "folded", strlen(value))) {
  callchain_param.mode = CHAIN_FOLDED;
  return 0;
 }
 return -1;
}
