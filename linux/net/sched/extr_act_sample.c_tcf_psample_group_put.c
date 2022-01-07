
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psample_group {int dummy; } ;


 int psample_group_put (struct psample_group*) ;

__attribute__((used)) static void tcf_psample_group_put(void *priv)
{
 struct psample_group *group = priv;

 psample_group_put(group);
}
