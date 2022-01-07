
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {unsigned long nr_to_scan; } ;


 int OLD_ZNODE_AGE ;
 unsigned long SHRINK_STOP ;
 int YOUNG_ZNODE_AGE ;
 long atomic_long_read (int *) ;
 int dbg_tnc (char*,...) ;
 unsigned long kick_a_thread () ;
 unsigned long shrink_tnc_trees (unsigned long,int ,int*) ;
 int ubifs_clean_zn_cnt ;

unsigned long ubifs_shrink_scan(struct shrinker *shrink,
    struct shrink_control *sc)
{
 unsigned long nr = sc->nr_to_scan;
 int contention = 0;
 unsigned long freed;
 long clean_zn_cnt = atomic_long_read(&ubifs_clean_zn_cnt);

 if (!clean_zn_cnt) {







  dbg_tnc("no clean znodes, kick a thread");
  return kick_a_thread();
 }

 freed = shrink_tnc_trees(nr, OLD_ZNODE_AGE, &contention);
 if (freed >= nr)
  goto out;

 dbg_tnc("not enough old znodes, try to free young ones");
 freed += shrink_tnc_trees(nr - freed, YOUNG_ZNODE_AGE, &contention);
 if (freed >= nr)
  goto out;

 dbg_tnc("not enough young znodes, free all");
 freed += shrink_tnc_trees(nr - freed, 0, &contention);

 if (!freed && contention) {
  dbg_tnc("freed nothing, but contention");
  return SHRINK_STOP;
 }

out:
 dbg_tnc("%lu znodes were freed, requested %lu", freed, nr);
 return freed;
}
