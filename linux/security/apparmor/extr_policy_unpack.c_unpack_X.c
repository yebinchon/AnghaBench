
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aa_ext {scalar_t__ pos; } ;
typedef enum aa_code { ____Placeholder_aa_code } aa_code ;


 int inbounds (struct aa_ext*,int) ;

__attribute__((used)) static bool unpack_X(struct aa_ext *e, enum aa_code code)
{
 if (!inbounds(e, 1))
  return 0;
 if (*(u8 *) e->pos != code)
  return 0;
 e->pos++;
 return 1;
}
