
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flock {int l_pid; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {int fd; } ;


 int EXIT_FAILURE ;
 int F_SETLK ;
 int F_UNLCK ;
 int LOG_ERR ;
 int SEEK_SET ;
 int errno ;
 int exit (int ) ;
 int fcntl (int ,int ,struct flock*) ;
 int getpid () ;
 TYPE_1__* kvp_file_info ;
 int strerror (int ) ;
 int syslog (int ,char*,int,int ,int ) ;

__attribute__((used)) static void kvp_release_lock(int pool)
{
 struct flock fl = {F_UNLCK, SEEK_SET, 0, 0, 0};
 fl.l_pid = getpid();

 if (fcntl(kvp_file_info[pool].fd, F_SETLK, &fl) == -1) {
  syslog(LOG_ERR, "Failed to release the lock pool: %d; error: %d %s", pool,
    errno, strerror(errno));
  exit(EXIT_FAILURE);
 }
}
