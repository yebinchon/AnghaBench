
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;



__attribute__((used)) static size_t sockaddr_size(void)
{
 return sizeof(struct sockaddr_storage);
}
