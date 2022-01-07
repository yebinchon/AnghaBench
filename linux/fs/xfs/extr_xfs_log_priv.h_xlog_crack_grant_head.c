
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 int atomic64_read (int *) ;
 int xlog_crack_grant_head_val (int ,int*,int*) ;

__attribute__((used)) static inline void
xlog_crack_grant_head(atomic64_t *head, int *cycle, int *space)
{
 xlog_crack_grant_head_val(atomic64_read(head), cycle, space);
}
