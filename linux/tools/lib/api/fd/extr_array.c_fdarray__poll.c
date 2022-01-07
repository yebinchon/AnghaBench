
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int nr; int entries; } ;


 int poll (int ,int ,int) ;

int fdarray__poll(struct fdarray *fda, int timeout)
{
 return poll(fda->entries, fda->nr, timeout);
}
