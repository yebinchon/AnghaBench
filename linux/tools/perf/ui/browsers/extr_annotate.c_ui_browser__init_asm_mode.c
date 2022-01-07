
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int nr_entries; } ;
struct annotation {int nr_asm_entries; } ;


 struct annotation* browser__annotation (struct ui_browser*) ;
 int ui_browser__reset_index (struct ui_browser*) ;

__attribute__((used)) static void ui_browser__init_asm_mode(struct ui_browser *browser)
{
 struct annotation *notes = browser__annotation(browser);
 ui_browser__reset_index(browser);
 browser->nr_entries = notes->nr_asm_entries;
}
