
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {char* ai_canonname; int ai_flags; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AF_INET ;
 int AI_CANONNAME ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int gethostname (char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void
kvp_get_domain_name(char *buffer, int length)
{
 struct addrinfo hints, *info ;
 int error = 0;

 gethostname(buffer, length);
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_INET;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_CANONNAME;

 error = getaddrinfo(buffer, ((void*)0), &hints, &info);
 if (error != 0) {
  snprintf(buffer, length, "getaddrinfo failed: 0x%x %s",
   error, gai_strerror(error));
  return;
 }
 snprintf(buffer, length, "%s", info->ai_canonname);
 freeaddrinfo(info);
}
