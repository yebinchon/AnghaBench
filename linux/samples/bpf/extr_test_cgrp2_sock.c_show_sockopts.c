
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ get_bind_to_device (int,char*,int) ;
 unsigned int get_priority (int) ;
 unsigned int get_somark (int) ;
 int perror (char*) ;
 int printf (char*,int,char*,unsigned int,unsigned int) ;
 int socket (int,int ,int) ;

__attribute__((used)) static int show_sockopts(int family)
{
 unsigned int mark, prio;
 char name[16];
 int sd;

 sd = socket(family, SOCK_DGRAM, 17);
 if (sd < 0) {
  perror("socket");
  return 1;
 }

 if (get_bind_to_device(sd, name, sizeof(name)) < 0)
  return 1;

 mark = get_somark(sd);
 prio = get_priority(sd);

 close(sd);

 printf("sd %d: dev %s, mark %u, priority %u\n", sd, name, mark, prio);

 return 0;
}
