
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SOCK_NAME_LEN ;
 int close (int) ;
 int shutdown (int,int) ;
 int sprintf (char*,char*,char*) ;
 int unlink (char*) ;

int closesocket(int sockfd, char *name)
{
 char sockname[MAX_SOCK_NAME_LEN];

 if (sockfd)
  close(sockfd);
 sprintf(sockname, "/tmp/%s", name);
 unlink(sockname);
 shutdown(sockfd, 2);

 return 0;
}
