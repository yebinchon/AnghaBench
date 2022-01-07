
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_fsnotify_mark {struct audit_fsnotify_mark* path; } ;


 int kfree (struct audit_fsnotify_mark*) ;

__attribute__((used)) static void audit_fsnotify_mark_free(struct audit_fsnotify_mark *audit_mark)
{
 kfree(audit_mark->path);
 kfree(audit_mark);
}
