
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsize_t ;


 int QIF_DQBLKSIZE ;
 int QIF_DQBLKSIZE_BITS ;

__attribute__((used)) static inline qsize_t stoqb(qsize_t space)
{
 return (space + QIF_DQBLKSIZE - 1) >> QIF_DQBLKSIZE_BITS;
}
