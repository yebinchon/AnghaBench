
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;


 int _RET_IP_ ;
 int __ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int,int ,int ) ;

__attribute__((used)) static inline int ocfs2_cluster_lock(struct ocfs2_super *osb,
         struct ocfs2_lock_res *lockres,
         int level,
         u32 lkm_flags,
         int arg_flags)
{
 return __ocfs2_cluster_lock(osb, lockres, level, lkm_flags, arg_flags,
        0, _RET_IP_);
}
