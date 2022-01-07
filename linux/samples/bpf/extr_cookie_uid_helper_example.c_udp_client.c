
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stats {int bytes; int packets; int uid; } ;
struct sockaddr_in {int sin_addr; int sin_port; int sin_family; int member_0; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int si_other ;
typedef int message ;
typedef int cookie ;
typedef int buf ;


 int AF_INET ;
 int EFAULT ;
 int PF_INET ;
 int PORT ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_COOKIE ;
 int bind (int,struct sockaddr*,int) ;
 int bpf_map_lookup_elem (int ,int*,struct stats*) ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int htons (int ) ;
 scalar_t__ inet_aton (char*,int *) ;
 int map_fd ;
 int memcmp (int *,int *,int) ;
 int printf (char*,...) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static void udp_client(void)
{
 struct sockaddr_in si_other = {0};
 struct sockaddr_in si_me = {0};
 struct stats dataEntry;
 int s_rcv, s_send, i, recv_len;
 char message = 'a';
 char buf;
 uint64_t cookie;
 int res;
 socklen_t cookie_len = sizeof(cookie);
 socklen_t slen = sizeof(si_other);

 s_rcv = socket(PF_INET, SOCK_DGRAM, 0);
 if (s_rcv < 0)
  error(1, errno, "rcv socket creat failed!\n");
 si_other.sin_family = AF_INET;
 si_other.sin_port = htons(PORT);
 if (inet_aton("127.0.0.1", &si_other.sin_addr) == 0)
  error(1, errno, "inet_aton\n");
 if (bind(s_rcv, (struct sockaddr *)&si_other, sizeof(si_other)) == -1)
  error(1, errno, "bind\n");
 s_send = socket(PF_INET, SOCK_DGRAM, 0);
 if (s_send < 0)
  error(1, errno, "send socket creat failed!\n");
 res = getsockopt(s_send, SOL_SOCKET, SO_COOKIE, &cookie, &cookie_len);
 if (res < 0)
  printf("get cookie failed: %s\n", strerror(errno));
 res = bpf_map_lookup_elem(map_fd, &cookie, &dataEntry);
 if (res != -1)
  error(1, errno, "socket stat found while flow not active\n");
 for (i = 0; i < 10; i++) {
  res = sendto(s_send, &message, sizeof(message), 0,
        (struct sockaddr *)&si_other, slen);
  if (res == -1)
   error(1, errno, "send\n");
  if (res != sizeof(message))
   error(1, 0, "%uB != %luB\n", res, sizeof(message));
  recv_len = recvfrom(s_rcv, &buf, sizeof(buf), 0,
        (struct sockaddr *)&si_me, &slen);
  if (recv_len < 0)
   error(1, errno, "receive\n");
  res = memcmp(&(si_other.sin_addr), &(si_me.sin_addr),
      sizeof(si_me.sin_addr));
  if (res != 0)
   error(1, EFAULT, "sender addr error: %d\n", res);
  printf("Message received: %c\n", buf);
  res = bpf_map_lookup_elem(map_fd, &cookie, &dataEntry);
  if (res < 0)
   error(1, errno, "lookup sk stat failed, cookie: %lu\n",
         cookie);
  printf("cookie: %lu, uid: 0x%x, Packet Count: %lu,"
   " Bytes Count: %lu\n\n", cookie, dataEntry.uid,
   dataEntry.packets, dataEntry.bytes);
 }
 close(s_send);
 close(s_rcv);
}
