
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct publication {int key; int port; int upper; int lower; int type; } ;
struct distr_item {void* key; void* port; void* upper; void* lower; void* type; } ;


 void* htonl (int ) ;

__attribute__((used)) static void publ_to_item(struct distr_item *i, struct publication *p)
{
 i->type = htonl(p->type);
 i->lower = htonl(p->lower);
 i->upper = htonl(p->upper);
 i->port = htonl(p->port);
 i->key = htonl(p->key);
}
