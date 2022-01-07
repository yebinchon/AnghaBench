
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int range; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void mls_context_init(struct context *c)
{
 memset(&c->range, 0, sizeof(c->range));
}
