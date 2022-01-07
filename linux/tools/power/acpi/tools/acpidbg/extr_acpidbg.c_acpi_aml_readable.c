
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;


 int ACPI_AML_USEC_PEEK ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_ZERO (int *) ;
 int acpi_aml_set_fd (int,int,int *) ;
 int perror (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static bool acpi_aml_readable(int fd)
{
 fd_set rfds;
 struct timeval tv;
 int ret;
 int maxfd = 0;

 tv.tv_sec = 0;
 tv.tv_usec = ACPI_AML_USEC_PEEK;
 FD_ZERO(&rfds);
 maxfd = acpi_aml_set_fd(fd, maxfd, &rfds);
 ret = select(maxfd+1, &rfds, ((void*)0), ((void*)0), &tv);
 if (ret < 0)
  perror("select");
 if (ret > 0 && FD_ISSET(fd, &rfds))
  return 1;
 return 0;
}
