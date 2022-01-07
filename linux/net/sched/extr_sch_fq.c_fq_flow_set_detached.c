
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_flow {int age; int * next; } ;


 int detached ;
 int jiffies ;

__attribute__((used)) static void fq_flow_set_detached(struct fq_flow *f)
{
 f->next = &detached;
 f->age = jiffies;
}
