
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigusr1_received ;

__attribute__((used)) static void sigusr1_handler(int signum)
{
 sigusr1_received++;
}
