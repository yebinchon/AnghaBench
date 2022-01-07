
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_browser {int dummy; } ;


 int free (struct hist_browser*) ;

void hist_browser__delete(struct hist_browser *browser)
{
 free(browser);
}
