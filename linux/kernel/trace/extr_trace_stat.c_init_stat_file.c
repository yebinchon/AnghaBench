
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat_session {int file; TYPE_1__* ts; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int stat_dir ;
 int tracefs_create_file (int ,int,int ,struct stat_session*,int *) ;
 int tracing_stat_fops ;
 scalar_t__ tracing_stat_init () ;

__attribute__((used)) static int init_stat_file(struct stat_session *session)
{
 if (!stat_dir && tracing_stat_init())
  return -ENODEV;

 session->file = tracefs_create_file(session->ts->name, 0644,
         stat_dir,
         session, &tracing_stat_fops);
 if (!session->file)
  return -ENOMEM;
 return 0;
}
