
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct hist_browser {TYPE_1__* he_selection; } ;
struct TYPE_2__ {struct thread* thread; } ;



__attribute__((used)) static struct thread *hist_browser__selected_thread(struct hist_browser *browser)
{
 return browser->he_selection->thread;
}
