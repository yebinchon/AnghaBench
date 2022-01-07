
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int ocfs2_control_device ;

__attribute__((used)) static void ocfs2_control_exit(void)
{
 misc_deregister(&ocfs2_control_device);
}
