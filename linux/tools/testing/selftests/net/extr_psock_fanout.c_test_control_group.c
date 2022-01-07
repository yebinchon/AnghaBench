
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKET_FANOUT_CPU ;
 int PACKET_FANOUT_FLAG_DEFRAG ;
 int PACKET_FANOUT_FLAG_ROLLOVER ;
 int PACKET_FANOUT_HASH ;
 scalar_t__ close (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int sock_fanout_open (int,int ) ;
 int stderr ;

__attribute__((used)) static void test_control_group(void)
{
 int fds[2];

 fprintf(stderr, "test: control multiple sockets\n");

 fds[0] = sock_fanout_open(PACKET_FANOUT_HASH, 0);
 if (fds[0] == -1) {
  fprintf(stderr, "ERROR: failed to open HASH socket\n");
  exit(1);
 }
 if (sock_fanout_open(PACKET_FANOUT_HASH |
          PACKET_FANOUT_FLAG_DEFRAG, 0) != -1) {
  fprintf(stderr, "ERROR: joined group with wrong flag defrag\n");
  exit(1);
 }
 if (sock_fanout_open(PACKET_FANOUT_HASH |
          PACKET_FANOUT_FLAG_ROLLOVER, 0) != -1) {
  fprintf(stderr, "ERROR: joined group with wrong flag ro\n");
  exit(1);
 }
 if (sock_fanout_open(PACKET_FANOUT_CPU, 0) != -1) {
  fprintf(stderr, "ERROR: joined group with wrong mode\n");
  exit(1);
 }
 fds[1] = sock_fanout_open(PACKET_FANOUT_HASH, 0);
 if (fds[1] == -1) {
  fprintf(stderr, "ERROR: failed to join group\n");
  exit(1);
 }
 if (close(fds[1]) || close(fds[0])) {
  fprintf(stderr, "ERROR: closing sockets\n");
  exit(1);
 }
}
