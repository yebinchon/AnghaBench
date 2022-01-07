
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb_root; } ;
struct dso {TYPE_1__ symbols; } ;


 int RB_EMPTY_ROOT (int *) ;

__attribute__((used)) static inline bool dso__has_symbols(const struct dso *dso)
{
 return !RB_EMPTY_ROOT(&dso->symbols.rb_root);
}
