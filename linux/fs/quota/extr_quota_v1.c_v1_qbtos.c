
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsize_t ;


 int QUOTABLOCK_BITS ;

__attribute__((used)) static inline qsize_t v1_qbtos(qsize_t blocks)
{
 return blocks << QUOTABLOCK_BITS;
}
