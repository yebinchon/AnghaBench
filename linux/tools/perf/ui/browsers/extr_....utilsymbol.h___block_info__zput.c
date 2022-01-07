
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_info {int dummy; } ;


 int block_info__put (struct block_info*) ;

__attribute__((used)) static inline void __block_info__zput(struct block_info **bi)
{
 block_info__put(*bi);
 *bi = ((void*)0);
}
