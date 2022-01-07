
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKET_FANOUT_FLAG_ROLLOVER ;
 int PACKET_FANOUT_ROLLOVER ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int sock_fanout_open (int,int ) ;
 int stderr ;

__attribute__((used)) static void test_control_single(void)
{
 fprintf(stderr, "test: control single socket\n");

 if (sock_fanout_open(PACKET_FANOUT_ROLLOVER |
          PACKET_FANOUT_FLAG_ROLLOVER, 0) != -1) {
  fprintf(stderr, "ERROR: opened socket with dual rollover\n");
  exit(1);
 }
}
