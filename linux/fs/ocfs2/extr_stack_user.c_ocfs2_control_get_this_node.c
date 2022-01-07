
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_control_lock ;
 int ocfs2_control_this_node ;

__attribute__((used)) static int ocfs2_control_get_this_node(void)
{
 int rc;

 mutex_lock(&ocfs2_control_lock);
 if (ocfs2_control_this_node < 0)
  rc = -EINVAL;
 else
  rc = ocfs2_control_this_node;
 mutex_unlock(&ocfs2_control_lock);

 return rc;
}
