
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int sock_fanout_read_ring (int,char*) ;
 int stderr ;

__attribute__((used)) static int sock_fanout_read(int fds[], char *rings[], const int expect[])
{
 int ret[2];

 ret[0] = sock_fanout_read_ring(fds[0], rings[0]);
 ret[1] = sock_fanout_read_ring(fds[1], rings[1]);

 fprintf(stderr, "info: count=%d,%d, expect=%d,%d\n",
   ret[0], ret[1], expect[0], expect[1]);

 if ((!(ret[0] == expect[0] && ret[1] == expect[1])) &&
     (!(ret[0] == expect[1] && ret[1] == expect[0]))) {
  fprintf(stderr, "warning: incorrect queue lengths\n");
  return 1;
 }

 return 0;
}
