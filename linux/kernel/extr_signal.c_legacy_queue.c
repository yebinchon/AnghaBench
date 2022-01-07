
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigpending {int signal; } ;


 int SIGRTMIN ;
 scalar_t__ sigismember (int *,int) ;

__attribute__((used)) static inline bool legacy_queue(struct sigpending *signals, int sig)
{
 return (sig < SIGRTMIN) && sigismember(&signals->signal, sig);
}
