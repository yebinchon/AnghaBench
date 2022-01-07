
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int prio ;


 int SOL_SOCKET ;
 int SO_PRIORITY ;
 int getsockopt (int,int ,int ,unsigned int*,int*) ;
 int perror (char*) ;

__attribute__((used)) static unsigned int get_priority(int sd)
{
 unsigned int prio = 0;
 socklen_t optlen = sizeof(prio);
 int rc;

 rc = getsockopt(sd, SOL_SOCKET, SO_PRIORITY, &prio, &optlen);
 if (rc < 0)
  perror("getsockopt(SO_PRIORITY)");

 return prio;
}
