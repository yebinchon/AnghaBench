
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ila_identifier {int csum_neutral; } ;



__attribute__((used)) static inline bool ila_csum_neutral_set(struct ila_identifier ident)
{
 return !!(ident.csum_neutral);
}
