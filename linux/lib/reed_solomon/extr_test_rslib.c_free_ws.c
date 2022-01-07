
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wspace {struct wspace* c; struct wspace* errlocs; } ;


 int kfree (struct wspace*) ;

__attribute__((used)) static void free_ws(struct wspace *ws)
{
 if (!ws)
  return;

 kfree(ws->errlocs);
 kfree(ws->c);
 kfree(ws);
}
