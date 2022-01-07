
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; } ;


 scalar_t__ OPTION_END ;
 struct option* malloc (int) ;
 int memcpy (struct option*,struct option const*,int) ;
 int option__cmp ;
 int qsort (struct option*,int,int,int ) ;

__attribute__((used)) static struct option *options__order(const struct option *opts)
{
 int nr_opts = 0, len;
 const struct option *o = opts;
 struct option *ordered;

 for (o = opts; o->type != OPTION_END; o++)
  ++nr_opts;

 len = sizeof(*o) * (nr_opts + 1);
 ordered = malloc(len);
 if (!ordered)
  goto out;
 memcpy(ordered, opts, len);

 qsort(ordered, nr_opts, sizeof(*o), option__cmp);
out:
 return ordered;
}
