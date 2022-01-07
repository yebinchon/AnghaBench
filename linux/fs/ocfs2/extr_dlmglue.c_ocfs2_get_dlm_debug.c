
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dlm_debug {int d_refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static void ocfs2_get_dlm_debug(struct ocfs2_dlm_debug *debug)
{
 kref_get(&debug->d_refcnt);
}
