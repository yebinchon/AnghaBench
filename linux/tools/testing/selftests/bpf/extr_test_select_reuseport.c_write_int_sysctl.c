
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int CHECK (int,char*,char*,char const*,int,int,...) ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void write_int_sysctl(const char *sysctl, int v)
{
 int fd, ret, size;
 char buf[16];

 fd = open(sysctl, O_RDWR);
 CHECK(fd == -1, "open(sysctl)", "sysctl:%s fd:%d errno:%d\n",
       sysctl, fd, errno);

 size = snprintf(buf, sizeof(buf), "%d", v);
 ret = write(fd, buf, size);
 CHECK(ret != size, "write(sysctl)",
       "sysctl:%s ret:%d size:%d errno:%d\n", sysctl, ret, size, errno);
 close(fd);
}
