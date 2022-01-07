
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set (int ,scalar_t__,char*) ;
 int def_msgs ;
 int def_msgsize ;
 scalar_t__ default_settings ;
 int errno ;
 int error (int,int ,char*,char*,int) ;
 int exit (int ) ;
 int max_msgs ;
 int max_msgsize ;
 scalar_t__ mq_close (int) ;
 int mq_unlink (scalar_t__) ;
 int perror (char*) ;
 int queue ;
 scalar_t__ queue_path ;
 scalar_t__ saved_def_msgs ;
 scalar_t__ saved_def_msgsize ;
 scalar_t__ saved_max_msgs ;
 scalar_t__ saved_max_msgsize ;
 int seteuid (int ) ;

void shutdown(int exit_val, char *err_cause, int line_no)
{
 static int in_shutdown = 0;


 if (in_shutdown++)
  return;

 if (seteuid(0) == -1)
  perror("seteuid() failed");

 if (queue != -1)
  if (mq_close(queue))
   perror("mq_close() during shutdown");
 if (queue_path)




  mq_unlink(queue_path);
 if (default_settings) {
  if (saved_def_msgs)
   __set(def_msgs, saved_def_msgs,
         "failed to restore saved_def_msgs");
  if (saved_def_msgsize)
   __set(def_msgsize, saved_def_msgsize,
         "failed to restore saved_def_msgsize");
 }
 if (saved_max_msgs)
  __set(max_msgs, saved_max_msgs,
        "failed to restore saved_max_msgs");
 if (saved_max_msgsize)
  __set(max_msgsize, saved_max_msgsize,
        "failed to restore saved_max_msgsize");
 if (exit_val)
  error(exit_val, errno, "%s at %d", err_cause, line_no);
 exit(0);
}
