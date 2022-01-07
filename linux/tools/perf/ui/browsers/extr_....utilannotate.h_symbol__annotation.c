
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
typedef void annotation ;
struct TYPE_2__ {int priv_size; } ;


 TYPE_1__ symbol_conf ;

__attribute__((used)) static inline struct annotation *symbol__annotation(struct symbol *sym)
{
 return (void *)sym - symbol_conf.priv_size;
}
