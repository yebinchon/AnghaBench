
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table_info {int number; } ;
struct xt_table {struct xt_table_info* private; } ;
struct xt_counters {int dummy; } ;


 int ENOMEM ;
 struct xt_counters* ERR_PTR (int ) ;
 int get_counters (struct xt_table_info const*,struct xt_counters*) ;
 struct xt_counters* vzalloc (unsigned int) ;

__attribute__((used)) static struct xt_counters *alloc_counters(const struct xt_table *table)
{
 unsigned int countersize;
 struct xt_counters *counters;
 const struct xt_table_info *private = table->private;





 countersize = sizeof(struct xt_counters) * private->number;
 counters = vzalloc(countersize);

 if (counters == ((void*)0))
  return ERR_PTR(-ENOMEM);

 get_counters(private, counters);

 return counters;
}
