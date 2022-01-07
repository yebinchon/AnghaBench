
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct sockaddr_in {int sin_addr; int sin_family; int sin_port; } ;
struct sockaddr {int dummy; } ;


 int inet_ntop (int ,int *,char*,int) ;
 int ntohs (int ) ;
 size_t scnprintf (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static size_t af_inet__scnprintf(struct sockaddr *sa, char *bf, size_t size)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)sa;
 char tmp[16];
 return scnprintf(bf, size, ", port: %d, addr: %s", ntohs(sin->sin_port),
    inet_ntop(sin->sin_family, &sin->sin_addr, tmp, sizeof(tmp)));
}
