
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_event; } ;


 int OCFS2_LOCK_BUSY ;
 int ocfs2_check_wait_flag (struct ocfs2_lock_res*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void ocfs2_wait_on_busy_lock(struct ocfs2_lock_res *lockres)

{
 wait_event(lockres->l_event,
     !ocfs2_check_wait_flag(lockres, OCFS2_LOCK_BUSY));
}
