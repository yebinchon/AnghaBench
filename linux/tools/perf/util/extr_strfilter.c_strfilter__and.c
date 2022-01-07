
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int dummy; } ;


 int strfilter__append (struct strfilter*,int,char const*,char const**) ;

int strfilter__and(struct strfilter *filter, const char *rules,
     const char **err)
{
 return strfilter__append(filter, 0, rules, err);
}
