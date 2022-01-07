
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int mark ;


 int SOL_SOCKET ;
 int SO_MARK ;
 int getsockopt (int,int ,int ,unsigned int*,int*) ;
 int perror (char*) ;

__attribute__((used)) static unsigned int get_somark(int sd)
{
 unsigned int mark = 0;
 socklen_t optlen = sizeof(mark);
 int rc;

 rc = getsockopt(sd, SOL_SOCKET, SO_MARK, &mark, &optlen);
 if (rc < 0)
  perror("getsockopt(SO_MARK)");

 return mark;
}
