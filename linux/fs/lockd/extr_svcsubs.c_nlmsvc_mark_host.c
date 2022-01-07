
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int h_inuse; int * net; } ;



__attribute__((used)) static int
nlmsvc_mark_host(void *data, struct nlm_host *hint)
{
 struct nlm_host *host = data;

 if ((hint->net == ((void*)0)) ||
     (host->net == hint->net))
  host->h_inuse = 1;
 return 0;
}
