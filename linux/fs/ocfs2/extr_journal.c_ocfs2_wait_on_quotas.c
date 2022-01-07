
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;


 int __ocfs2_wait_on_mount (struct ocfs2_super*,int) ;

__attribute__((used)) static inline int ocfs2_wait_on_quotas(struct ocfs2_super *osb)
{
 return __ocfs2_wait_on_mount(osb, 1);
}
