
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_rtt_storage {int icsk_retransmits; int delivered_ce; int delivered; int dsack_dups; int invoked; } ;
typedef int __u32 ;


 scalar_t__ CHECK_FAIL (int) ;
 scalar_t__ bpf_map_lookup_elem (int,int*,struct tcp_rtt_storage*) ;
 int log_err (char*,char const*,int ,int ) ;
 int perror (char*) ;

__attribute__((used)) static int verify_sk(int map_fd, int client_fd, const char *msg, __u32 invoked,
       __u32 dsack_dups, __u32 delivered, __u32 delivered_ce,
       __u32 icsk_retransmits)
{
 int err = 0;
 struct tcp_rtt_storage val;

 if (CHECK_FAIL(bpf_map_lookup_elem(map_fd, &client_fd, &val) < 0)) {
  perror("Failed to read socket storage");
  return -1;
 }

 if (val.invoked != invoked) {
  log_err("%s: unexpected bpf_tcp_sock.invoked %d != %d",
   msg, val.invoked, invoked);
  err++;
 }

 if (val.dsack_dups != dsack_dups) {
  log_err("%s: unexpected bpf_tcp_sock.dsack_dups %d != %d",
   msg, val.dsack_dups, dsack_dups);
  err++;
 }

 if (val.delivered != delivered) {
  log_err("%s: unexpected bpf_tcp_sock.delivered %d != %d",
   msg, val.delivered, delivered);
  err++;
 }

 if (val.delivered_ce != delivered_ce) {
  log_err("%s: unexpected bpf_tcp_sock.delivered_ce %d != %d",
   msg, val.delivered_ce, delivered_ce);
  err++;
 }

 if (val.icsk_retransmits != icsk_retransmits) {
  log_err("%s: unexpected bpf_tcp_sock.icsk_retransmits %d != %d",
   msg, val.icsk_retransmits, icsk_retransmits);
  err++;
 }

 return err;
}
