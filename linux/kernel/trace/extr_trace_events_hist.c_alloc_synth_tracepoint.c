
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int name; } ;


 int ENOMEM ;
 struct tracepoint* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct tracepoint*) ;
 int kstrdup (char*,int ) ;
 struct tracepoint* kzalloc (int,int ) ;

__attribute__((used)) static struct tracepoint *alloc_synth_tracepoint(char *name)
{
 struct tracepoint *tp;

 tp = kzalloc(sizeof(*tp), GFP_KERNEL);
 if (!tp)
  return ERR_PTR(-ENOMEM);

 tp->name = kstrdup(name, GFP_KERNEL);
 if (!tp->name) {
  kfree(tp);
  return ERR_PTR(-ENOMEM);
 }

 return tp;
}
