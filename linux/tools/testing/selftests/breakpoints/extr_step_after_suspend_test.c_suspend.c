
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigevent {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; } ;


 int CLOCK_BOOTTIME_ALARM ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 scalar_t__ getuid () ;
 int ksft_exit_fail_msg (char*,...) ;
 int ksft_exit_skip (char*) ;
 int open (char*,int ) ;
 int strerror (int ) ;
 scalar_t__ strlen (char*) ;
 int timerfd_create (int ,int ) ;
 int timerfd_settime (int,int ,struct itimerspec*,int *) ;
 scalar_t__ write (int,char*,scalar_t__) ;

void suspend(void)
{
 int power_state_fd;
 struct sigevent event = {};
 int timerfd;
 int err;
 struct itimerspec spec = {};

 if (getuid() != 0)
  ksft_exit_skip("Please run the test as root - Exiting.\n");

 power_state_fd = open("/sys/power/state", O_RDWR);
 if (power_state_fd < 0)
  ksft_exit_fail_msg(
   "open(\"/sys/power/state\") failed %s)\n",
   strerror(errno));

 timerfd = timerfd_create(CLOCK_BOOTTIME_ALARM, 0);
 if (timerfd < 0)
  ksft_exit_fail_msg("timerfd_create() failed\n");

 spec.it_value.tv_sec = 5;
 err = timerfd_settime(timerfd, 0, &spec, ((void*)0));
 if (err < 0)
  ksft_exit_fail_msg("timerfd_settime() failed\n");

 if (write(power_state_fd, "mem", strlen("mem")) != strlen("mem"))
  ksft_exit_fail_msg("Failed to enter Suspend state\n");

 close(timerfd);
 close(power_state_fd);
}
