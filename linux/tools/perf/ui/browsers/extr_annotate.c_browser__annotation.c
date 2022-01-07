
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {struct map_symbol* priv; } ;
struct map_symbol {int sym; } ;
struct annotation {int dummy; } ;


 struct annotation* symbol__annotation (int ) ;

__attribute__((used)) static inline struct annotation *browser__annotation(struct ui_browser *browser)
{
 struct map_symbol *ms = browser->priv;
 return symbol__annotation(ms->sym);
}
