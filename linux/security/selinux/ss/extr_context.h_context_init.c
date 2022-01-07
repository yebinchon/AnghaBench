
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int memset (struct context*,int ,int) ;

__attribute__((used)) static inline void context_init(struct context *c)
{
 memset(c, 0, sizeof(*c));
}
