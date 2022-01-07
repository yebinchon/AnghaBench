
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct svcxdr_tmpbuf {void* buf; struct svcxdr_tmpbuf* next; } ;
struct nfsd4_compoundargs {struct svcxdr_tmpbuf* to_free; } ;


 int GFP_KERNEL ;
 struct svcxdr_tmpbuf* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static void *
svcxdr_tmpalloc(struct nfsd4_compoundargs *argp, u32 len)
{
 struct svcxdr_tmpbuf *tb;

 tb = kmalloc(sizeof(*tb) + len, GFP_KERNEL);
 if (!tb)
  return ((void*)0);
 tb->next = argp->to_free;
 argp->to_free = tb;
 return tb->buf;
}
