
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct disttable {size_t size; int * table; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;
typedef int s16 ;
typedef int __s16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NETEM_DIST_MAX ;
 int dist_free (struct disttable*) ;
 struct disttable* kvmalloc (int,int ) ;
 int * nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int swap (struct disttable*,struct disttable*) ;

__attribute__((used)) static int get_dist_table(struct Qdisc *sch, struct disttable **tbl,
     const struct nlattr *attr)
{
 size_t n = nla_len(attr)/sizeof(__s16);
 const __s16 *data = nla_data(attr);
 spinlock_t *root_lock;
 struct disttable *d;
 int i;

 if (!n || n > NETEM_DIST_MAX)
  return -EINVAL;

 d = kvmalloc(sizeof(struct disttable) + n * sizeof(s16), GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 d->size = n;
 for (i = 0; i < n; i++)
  d->table[i] = data[i];

 root_lock = qdisc_root_sleeping_lock(sch);

 spin_lock_bh(root_lock);
 swap(*tbl, d);
 spin_unlock_bh(root_lock);

 dist_free(d);
 return 0;
}
