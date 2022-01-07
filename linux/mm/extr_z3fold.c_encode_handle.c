
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {int slots; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 unsigned long __encode_handle (struct z3fold_header*,int ,int) ;

__attribute__((used)) static unsigned long encode_handle(struct z3fold_header *zhdr, enum buddy bud)
{
 return __encode_handle(zhdr, zhdr->slots, bud);
}
