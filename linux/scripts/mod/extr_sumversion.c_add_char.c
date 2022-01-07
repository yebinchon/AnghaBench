
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md4_ctx {int dummy; } ;


 int md4_update (struct md4_ctx*,unsigned char*,int) ;

__attribute__((used)) static inline void add_char(unsigned char c, struct md4_ctx *md)
{
 md4_update(md, &c, 1);
}
