
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHAIN_MAX_SIGNALS ;
 int die (char*,int) ;

__attribute__((used)) static void check_signum(int sig)
{
 if (sig < 1 || sig >= SIGCHAIN_MAX_SIGNALS)
  die("BUG: signal out of range: %d", sig);
}
