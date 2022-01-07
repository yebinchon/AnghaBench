
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct audit_context {int sockaddr_len; void* sockaddr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct audit_context* audit_context () ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;

int __audit_sockaddr(int len, void *a)
{
 struct audit_context *context = audit_context();

 if (!context->sockaddr) {
  void *p = kmalloc(sizeof(struct sockaddr_storage), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
  context->sockaddr = p;
 }

 context->sockaddr_len = len;
 memcpy(context->sockaddr, a, len);
 return 0;
}
