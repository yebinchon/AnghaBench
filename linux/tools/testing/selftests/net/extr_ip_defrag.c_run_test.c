
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;


 int FRAG_HLEN ;
 int IPPROTO_RAW ;
 int MSG_LEN_MAX ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 scalar_t__ cfg_overlap ;
 scalar_t__ cfg_verbose ;
 scalar_t__ close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 int frag_counter ;
 int max_frag_len ;
 int msg_counter ;
 int payload_len ;
 int printf (char*,int,...) ;
 int rand () ;
 int recv_validate_udp (int) ;
 int send_udp_frags (int,struct sockaddr*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int* udp_payload ;

__attribute__((used)) static void run_test(struct sockaddr *addr, socklen_t alen, bool ipv6)
{
 int fd_tx_raw, fd_rx_udp;




 struct timeval tv = { .tv_sec = 1, .tv_usec = 10 };
 int idx;
 int min_frag_len = 8;


 for (idx = 0; idx < MSG_LEN_MAX; ++idx)
  udp_payload[idx] = idx % 256;


 fd_tx_raw = socket(addr->sa_family, SOCK_RAW, IPPROTO_RAW);
 if (fd_tx_raw == -1)
  error(1, errno, "socket tx_raw");

 fd_rx_udp = socket(addr->sa_family, SOCK_DGRAM, 0);
 if (fd_rx_udp == -1)
  error(1, errno, "socket rx_udp");
 if (bind(fd_rx_udp, addr, alen))
  error(1, errno, "bind");

 if (setsockopt(fd_rx_udp, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
  error(1, errno, "setsockopt rcv timeout");

 for (payload_len = min_frag_len; payload_len < MSG_LEN_MAX;
   payload_len += (rand() % 4096)) {
  if (cfg_verbose)
   printf("payload_len: %d\n", payload_len);

  if (cfg_overlap) {





   max_frag_len = min_frag_len +
    rand() % (1500 - FRAG_HLEN - min_frag_len);
   send_udp_frags(fd_tx_raw, addr, alen, ipv6);
   recv_validate_udp(fd_rx_udp);
  } else {






   max_frag_len = min_frag_len;
   do {
    send_udp_frags(fd_tx_raw, addr, alen, ipv6);
    recv_validate_udp(fd_rx_udp);
    max_frag_len += 8 * (rand() % 8);
   } while (max_frag_len < (1500 - FRAG_HLEN) &&
     max_frag_len <= payload_len);
  }
 }


 if (close(fd_tx_raw))
  error(1, errno, "close tx_raw");
 if (close(fd_rx_udp))
  error(1, errno, "close rx_udp");

 if (cfg_verbose)
  printf("processed %d messages, %d fragments\n",
   msg_counter, frag_counter);

 fprintf(stderr, "PASS\n");
}
