
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uword ;
struct buffer_ext {int dummy; } ;


 int buffer_ext_add (struct buffer_ext*,int *,int) ;

__attribute__((used)) static void emit_uword(struct buffer_ext *be, uword data)
{
 buffer_ext_add(be, &data, sizeof(uword));
}
