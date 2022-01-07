
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr const*,int) ;
 int close (int) ;
 int htonl (int ) ;
 int log_err (char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int start_server(void)
{
 struct sockaddr_in addr = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_LOOPBACK),
 };
 int fd;

 fd = socket(AF_INET, SOCK_STREAM, 0);
 if (fd < 0) {
  log_err("Failed to create server socket");
  return -1;
 }

 if (bind(fd, (const struct sockaddr *)&addr, sizeof(addr)) < 0) {
  log_err("Failed to bind socket");
  close(fd);
  return -1;
 }

 return fd;
}
