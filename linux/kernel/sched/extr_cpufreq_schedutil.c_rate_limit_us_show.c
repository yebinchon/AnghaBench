
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_tunables {int rate_limit_us; } ;
struct gov_attr_set {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct sugov_tunables* to_sugov_tunables (struct gov_attr_set*) ;

__attribute__((used)) static ssize_t rate_limit_us_show(struct gov_attr_set *attr_set, char *buf)
{
 struct sugov_tunables *tunables = to_sugov_tunables(attr_set);

 return sprintf(buf, "%u\n", tunables->rate_limit_us);
}
