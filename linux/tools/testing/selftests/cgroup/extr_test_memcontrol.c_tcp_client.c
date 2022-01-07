
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int servport ;
typedef int buf ;


 int KSFT_FAIL ;
 int KSFT_PASS ;
 long cg_read_key_long (char const*,char*,char*) ;
 long cg_read_long (char const*,char*) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,int *,struct addrinfo**) ;
 scalar_t__ read (int,int *,int) ;
 int snprintf (char*,int,char*,unsigned short) ;
 int socket (int ,int ,int ) ;
 scalar_t__ values_close (long,long,int) ;

__attribute__((used)) static int tcp_client(const char *cgroup, unsigned short port)
{
 const char server[] = "localhost";
 struct addrinfo *ai;
 char servport[6];
 int retries = 0x10;
 int sk, ret;

 snprintf(servport, sizeof(servport), "%hd", port);
 ret = getaddrinfo(server, servport, ((void*)0), &ai);
 if (ret)
  return ret;

 sk = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
 if (sk < 0)
  goto free_ainfo;

 ret = connect(sk, ai->ai_addr, ai->ai_addrlen);
 if (ret < 0)
  goto close_sk;

 ret = KSFT_FAIL;
 while (retries--) {
  uint8_t buf[0x100000];
  long current, sock;

  if (read(sk, buf, sizeof(buf)) <= 0)
   goto close_sk;

  current = cg_read_long(cgroup, "memory.current");
  sock = cg_read_key_long(cgroup, "memory.stat", "sock ");

  if (current < 0 || sock < 0)
   goto close_sk;

  if (current < sock)
   goto close_sk;

  if (values_close(current, sock, 10)) {
   ret = KSFT_PASS;
   break;
  }
 }

close_sk:
 close(sk);
free_ainfo:
 freeaddrinfo(ai);
 return ret;
}
