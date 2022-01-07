
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sw842_param {int in; int instart; } ;


 int I2_BITS ;
 int I4_BITS ;
 int I8_BITS ;
 int replace_hash (struct sw842_param*,int,int,int) ;

__attribute__((used)) static void update_hashtables(struct sw842_param *p)
{
 u64 pos = p->in - p->instart;
 u64 n8 = (pos >> 3) % (1 << I8_BITS);
 u64 n4 = (pos >> 2) % (1 << I4_BITS);
 u64 n2 = (pos >> 1) % (1 << I2_BITS);

 replace_hash(p, 8, n8, 0);
 replace_hash(p, 4, n4, 0);
 replace_hash(p, 4, n4, 1);
 replace_hash(p, 2, n2, 0);
 replace_hash(p, 2, n2, 1);
 replace_hash(p, 2, n2, 2);
 replace_hash(p, 2, n2, 3);
}
