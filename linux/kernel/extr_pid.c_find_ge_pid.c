
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int idr; } ;
struct pid {int dummy; } ;


 struct pid* idr_get_next (int *,int*) ;

struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
{
 return idr_get_next(&ns->idr, &nr);
}
