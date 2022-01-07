
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct annotation {int dummy; } ;
struct TYPE_2__ {int init_annotation; int priv_size; scalar_t__ initialized; } ;


 int pr_err (char*) ;
 TYPE_1__ symbol_conf ;

int symbol__annotation_init(void)
{
 if (symbol_conf.init_annotation)
  return 0;

 if (symbol_conf.initialized) {
  pr_err("Annotation needs to be init before symbol__init()\n");
  return -1;
 }

 symbol_conf.priv_size += sizeof(struct annotation);
 symbol_conf.init_annotation = 1;
 return 0;
}
