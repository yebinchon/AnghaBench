
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int sin6_addr; } ;
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int saddr ;
typedef int daddr ;
typedef int cpu_set_t ;
typedef int cpu_set ;




 int CPU_SET (int,int *) ;
 int INADDR_ANY ;
 int INADDR_LOOPBACK ;
 int PORT ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int error (int,int ,char*,...) ;
 void* htonl (int ) ;
 void* htons (int ) ;
 int in6addr_any ;
 int in6addr_loopback ;
 int memset (int *,int ,int) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 scalar_t__ send (int,char*,int,int ) ;
 int socket (int,int,int ) ;

__attribute__((used)) static void send_from_cpu(int cpu_id, int family, int proto)
{
 struct sockaddr_storage saddr, daddr;
 struct sockaddr_in *saddr4, *daddr4;
 struct sockaddr_in6 *saddr6, *daddr6;
 cpu_set_t cpu_set;
 int fd;

 switch (family) {
 case 129:
  saddr4 = (struct sockaddr_in *)&saddr;
  saddr4->sin_family = 129;
  saddr4->sin_addr.s_addr = htonl(INADDR_ANY);
  saddr4->sin_port = 0;

  daddr4 = (struct sockaddr_in *)&daddr;
  daddr4->sin_family = 129;
  daddr4->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  daddr4->sin_port = htons(PORT);
  break;
 case 128:
  saddr6 = (struct sockaddr_in6 *)&saddr;
  saddr6->sin6_family = 128;
  saddr6->sin6_addr = in6addr_any;
  saddr6->sin6_port = 0;

  daddr6 = (struct sockaddr_in6 *)&daddr;
  daddr6->sin6_family = 128;
  daddr6->sin6_addr = in6addr_loopback;
  daddr6->sin6_port = htons(PORT);
  break;
 default:
  error(1, 0, "Unsupported family %d", family);
 }

 memset(&cpu_set, 0, sizeof(cpu_set));
 CPU_SET(cpu_id, &cpu_set);
 if (sched_setaffinity(0, sizeof(cpu_set), &cpu_set) < 0)
  error(1, errno, "failed to pin to cpu");

 fd = socket(family, proto, 0);
 if (fd < 0)
  error(1, errno, "failed to create send socket");

 if (bind(fd, (struct sockaddr *)&saddr, sizeof(saddr)))
  error(1, errno, "failed to bind send socket");

 if (connect(fd, (struct sockaddr *)&daddr, sizeof(daddr)))
  error(1, errno, "failed to connect send socket");

 if (send(fd, "a", 1, 0) < 0)
  error(1, errno, "failed to send message");

 close(fd);
}
