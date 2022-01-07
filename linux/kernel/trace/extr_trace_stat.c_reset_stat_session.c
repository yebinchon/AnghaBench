
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_session {int stat_mutex; } ;


 int __reset_stat_session (struct stat_session*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void reset_stat_session(struct stat_session *session)
{
 mutex_lock(&session->stat_mutex);
 __reset_stat_session(session);
 mutex_unlock(&session->stat_mutex);
}
