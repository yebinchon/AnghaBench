
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigchain_fun ;


 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int sigchain_push (int ,int ) ;

void sigchain_push_common(sigchain_fun f)
{
 sigchain_push(SIGINT, f);
 sigchain_push(SIGHUP, f);
 sigchain_push(SIGTERM, f);
 sigchain_push(SIGQUIT, f);
 sigchain_push(SIGPIPE, f);
}
