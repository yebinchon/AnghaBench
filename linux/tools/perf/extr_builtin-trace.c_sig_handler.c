
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int done ;
 int interrupted ;

__attribute__((used)) static void sig_handler(int sig)
{
 done = 1;
 interrupted = sig == SIGINT;
}
