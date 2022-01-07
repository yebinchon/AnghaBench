
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int CHECK (int,char*,char*,char const*,int,int ) ;
 int atoi (char*) ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static int read_int_sysctl(const char *sysctl)
{
 char buf[16];
 int fd, ret;

 fd = open(sysctl, 0);
 CHECK(fd == -1, "open(sysctl)", "sysctl:%s fd:%d errno:%d\n",
       sysctl, fd, errno);

 ret = read(fd, buf, sizeof(buf));
 CHECK(ret <= 0, "read(sysctl)", "sysctl:%s ret:%d errno:%d\n",
       sysctl, ret, errno);
 close(fd);

 return atoi(buf);
}
