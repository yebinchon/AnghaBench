
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int name; } ;
struct ocfs2_cluster_connection {int dummy; } ;


 struct ocfs2_cluster_connection* ERR_PTR (int) ;
 int mlog_errno (int) ;
 int ocfs2_cluster_connect_agnostic (int ,int ,int *,int ,int *,struct ocfs2_cluster_connection**) ;
 int user_dlm_lproto ;
 int user_dlm_recovery_handler_noop ;

struct ocfs2_cluster_connection *user_dlm_register(const struct qstr *name)
{
 int rc;
 struct ocfs2_cluster_connection *conn;

 rc = ocfs2_cluster_connect_agnostic(name->name, name->len,
         &user_dlm_lproto,
         user_dlm_recovery_handler_noop,
         ((void*)0), &conn);
 if (rc)
  mlog_errno(rc);

 return rc ? ERR_PTR(rc) : conn;
}
