
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_session {int stat_mutex; int file; } ;


 int __reset_stat_session (struct stat_session*) ;
 int kfree (struct stat_session*) ;
 int mutex_destroy (int *) ;
 int tracefs_remove (int ) ;

__attribute__((used)) static void destroy_session(struct stat_session *session)
{
 tracefs_remove(session->file);
 __reset_stat_session(session);
 mutex_destroy(&session->stat_mutex);
 kfree(session);
}
