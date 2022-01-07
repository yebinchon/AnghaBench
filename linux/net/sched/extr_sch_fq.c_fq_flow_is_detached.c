
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_flow {int * next; } ;


 int detached ;

__attribute__((used)) static bool fq_flow_is_detached(const struct fq_flow *f)
{
 return f->next == &detached;
}
