
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int getpid () ;
 int kill (int ,int ) ;
 int nr_tests ;
 scalar_t__ trapped ;

__attribute__((used)) static void check_trapped(void)
{




 if (!trapped)
  kill(getpid(), SIGUSR1);
 trapped = 0;

 nr_tests++;
}
