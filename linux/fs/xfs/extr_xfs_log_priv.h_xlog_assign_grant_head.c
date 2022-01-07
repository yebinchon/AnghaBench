
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 int atomic64_set (int *,int ) ;
 int xlog_assign_grant_head_val (int,int) ;

__attribute__((used)) static inline void
xlog_assign_grant_head(atomic64_t *head, int cycle, int space)
{
 atomic64_set(head, xlog_assign_grant_head_val(cycle, space));
}
