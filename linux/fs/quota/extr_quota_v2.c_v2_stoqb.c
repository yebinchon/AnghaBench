
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsize_t ;


 int QUOTABLOCK_BITS ;
 int QUOTABLOCK_SIZE ;

__attribute__((used)) static inline qsize_t v2_stoqb(qsize_t space)
{
 return (space + QUOTABLOCK_SIZE - 1) >> QUOTABLOCK_BITS;
}
