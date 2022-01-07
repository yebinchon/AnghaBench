
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_browser {int (* title ) (struct hist_browser*,char*,size_t) ;} ;


 int stub1 (struct hist_browser*,char*,size_t) ;

__attribute__((used)) static int hist_browser__title(struct hist_browser *browser, char *bf, size_t size)
{
 return browser->title ? browser->title(browser, bf, size) : 0;
}
