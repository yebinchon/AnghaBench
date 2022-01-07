
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotate_browser {int * search_bf; } ;


 int __annotate_browser__search (struct annotate_browser*) ;
 int annotate_browser__search (struct annotate_browser*,int) ;

__attribute__((used)) static bool annotate_browser__continue_search(struct annotate_browser *browser,
           int delay_secs)
{
 if (!*browser->search_bf)
  return annotate_browser__search(browser, delay_secs);

 return __annotate_browser__search(browser);
}
