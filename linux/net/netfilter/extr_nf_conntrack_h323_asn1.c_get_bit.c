
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstr {int* cur; int bit; } ;


 int INC_BIT (struct bitstr*) ;

__attribute__((used)) static unsigned int get_bit(struct bitstr *bs)
{
 unsigned int b = (*bs->cur) & (0x80 >> bs->bit);

 INC_BIT(bs);

 return b;
}
