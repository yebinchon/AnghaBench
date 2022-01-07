
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_control {scalar_t__ order; int priority; } ;


 int CONFIG_COMPACTION ;
 int DEF_PRIORITY ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ PAGE_ALLOC_COSTLY_ORDER ;

__attribute__((used)) static bool in_reclaim_compaction(struct scan_control *sc)
{
 if (IS_ENABLED(CONFIG_COMPACTION) && sc->order &&
   (sc->order > PAGE_ALLOC_COSTLY_ORDER ||
    sc->priority < DEF_PRIORITY - 2))
  return 1;

 return 0;
}
