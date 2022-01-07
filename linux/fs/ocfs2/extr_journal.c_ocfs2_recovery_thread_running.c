
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int * recovery_thread_task; } ;


 int mb () ;

__attribute__((used)) static int ocfs2_recovery_thread_running(struct ocfs2_super *osb)
{
 mb();
 return osb->recovery_thread_task != ((void*)0);
}
