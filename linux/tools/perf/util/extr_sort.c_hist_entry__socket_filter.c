
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int socket; } ;


 int HIST_FILTER__SOCKET ;

__attribute__((used)) static int hist_entry__socket_filter(struct hist_entry *he, int type, const void *arg)
{
 int sk = *(const int *)arg;

 if (type != HIST_FILTER__SOCKET)
  return -1;

 return sk >= 0 && he->socket != sk;
}
