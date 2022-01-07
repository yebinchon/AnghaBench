
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msgseg {struct msg_msgseg* next; } ;
struct msg_msg {struct msg_msgseg* next; int * security; } ;


 int DATALEN_MSG ;
 int DATALEN_SEG ;
 int GFP_KERNEL_ACCOUNT ;
 int cond_resched () ;
 int free_msg (struct msg_msg*) ;
 void* kmalloc (int,int ) ;
 size_t min (size_t,int ) ;

__attribute__((used)) static struct msg_msg *alloc_msg(size_t len)
{
 struct msg_msg *msg;
 struct msg_msgseg **pseg;
 size_t alen;

 alen = min(len, DATALEN_MSG);
 msg = kmalloc(sizeof(*msg) + alen, GFP_KERNEL_ACCOUNT);
 if (msg == ((void*)0))
  return ((void*)0);

 msg->next = ((void*)0);
 msg->security = ((void*)0);

 len -= alen;
 pseg = &msg->next;
 while (len > 0) {
  struct msg_msgseg *seg;

  cond_resched();

  alen = min(len, DATALEN_SEG);
  seg = kmalloc(sizeof(*seg) + alen, GFP_KERNEL_ACCOUNT);
  if (seg == ((void*)0))
   goto out_err;
  *pseg = seg;
  seg->next = ((void*)0);
  pseg = &seg->next;
  len -= alen;
 }

 return msg;

out_err:
 free_msg(msg);
 return ((void*)0);
}
