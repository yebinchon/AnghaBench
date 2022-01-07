
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;



__attribute__((used)) static inline pgprot_t arch_filter_pgprot(pgprot_t prot)
{
 return prot;
}
