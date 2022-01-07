
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct publication {int all_publ; int local_publ; int binding_node; int binding_sock; void* key; void* port; void* node; void* scope; void* upper; void* lower; void* type; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct publication* kzalloc (int,int ) ;

__attribute__((used)) static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
         u32 scope, u32 node, u32 port,
         u32 key)
{
 struct publication *publ = kzalloc(sizeof(*publ), GFP_ATOMIC);

 if (!publ)
  return ((void*)0);

 publ->type = type;
 publ->lower = lower;
 publ->upper = upper;
 publ->scope = scope;
 publ->node = node;
 publ->port = port;
 publ->key = key;
 INIT_LIST_HEAD(&publ->binding_sock);
 INIT_LIST_HEAD(&publ->binding_node);
 INIT_LIST_HEAD(&publ->local_publ);
 INIT_LIST_HEAD(&publ->all_publ);
 return publ;
}
