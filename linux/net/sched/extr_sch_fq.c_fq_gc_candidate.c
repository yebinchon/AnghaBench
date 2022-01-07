
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_flow {scalar_t__ age; } ;


 scalar_t__ FQ_GC_AGE ;
 scalar_t__ fq_flow_is_detached (struct fq_flow const*) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static bool fq_gc_candidate(const struct fq_flow *f)
{
 return fq_flow_is_detached(f) &&
        time_after(jiffies, f->age + FQ_GC_AGE);
}
