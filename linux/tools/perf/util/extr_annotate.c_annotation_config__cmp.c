
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_config {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int annotation_config__cmp(const void *name, const void *cfgp)
{
 const struct annotation_config *cfg = cfgp;

 return strcmp(name, cfg->name);
}
