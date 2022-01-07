
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct list_head {int dummy; } ;
struct dccp_ackvec_parsed {void** vec; int node; void* nonce; void* len; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 struct dccp_ackvec_parsed* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

int dccp_ackvec_parsed_add(struct list_head *head, u8 *vec, u8 len, u8 nonce)
{
 struct dccp_ackvec_parsed *new = kmalloc(sizeof(*new), GFP_ATOMIC);

 if (new == ((void*)0))
  return -ENOBUFS;
 new->vec = vec;
 new->len = len;
 new->nonce = nonce;

 list_add_tail(&new->node, head);
 return 0;
}
