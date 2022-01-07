
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int fcntl (int,int ,int) ;
 int perror (char*) ;

__attribute__((used)) static int acpi_aml_set_fl(int fd, int flags)
{
 int ret;

 ret = fcntl(fd, F_GETFL, 0);
 if (ret < 0) {
  perror("fcntl(F_GETFL)");
  return ret;
 }
 flags |= ret;
 ret = fcntl(fd, F_SETFL, flags);
 if (ret < 0) {
  perror("fcntl(F_SETFL)");
  return ret;
 }
 return ret;
}
