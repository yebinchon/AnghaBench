
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int htons (unsigned int) ;

__attribute__((used)) static inline __be16 build_tci(unsigned int id, unsigned int cfi,
          unsigned int prio)
{
 return htons(id | (cfi << 12) | (prio << 13));
}
