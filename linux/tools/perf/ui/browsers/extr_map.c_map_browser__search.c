
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct symbol {int rb_node; } ;
struct TYPE_2__ {int top_idx; int index; int * top; } ;
struct map_browser {TYPE_1__ b; int map; } ;


 int K_ENTER ;
 struct symbol* map__find_symbol (int ,int ) ;
 struct symbol* map__find_symbol_by_name (int ,char*) ;
 int strtoull (char*,int *,int) ;
 int * symbol__browser_index (struct symbol*) ;
 char tolower (char) ;
 int ui_browser__input_window (char*,char*,char*,char*,int ) ;
 int ui_helpline__fpush (char*,char*) ;

__attribute__((used)) static int map_browser__search(struct map_browser *browser)
{
 char target[512];
 struct symbol *sym;
 int err = ui_browser__input_window("Search by name/addr",
        "Prefix with 0x to search by address",
        target, "ENTER: OK, ESC: Cancel", 0);
 if (err != K_ENTER)
  return -1;

 if (target[0] == '0' && tolower(target[1]) == 'x') {
  u64 addr = strtoull(target, ((void*)0), 16);
  sym = map__find_symbol(browser->map, addr);
 } else
  sym = map__find_symbol_by_name(browser->map, target);

 if (sym != ((void*)0)) {
  u32 *idx = symbol__browser_index(sym);

  browser->b.top = &sym->rb_node;
  browser->b.index = browser->b.top_idx = *idx;
 } else
  ui_helpline__fpush("%s not found!", target);

 return 0;
}
