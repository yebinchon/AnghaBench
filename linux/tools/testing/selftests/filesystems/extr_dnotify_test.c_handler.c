
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_fd; } ;
typedef TYPE_1__ siginfo_t ;


 int event_fd ;

__attribute__((used)) static void handler(int sig, siginfo_t *si, void *data)
{
 event_fd = si->si_fd;
}
