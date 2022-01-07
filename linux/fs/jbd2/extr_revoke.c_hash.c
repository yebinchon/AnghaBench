
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* j_revoke; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_4__ {int hash_shift; } ;


 int hash_64 (unsigned long long,int ) ;

__attribute__((used)) static inline int hash(journal_t *journal, unsigned long long block)
{
 return hash_64(block, journal->j_revoke->hash_shift);
}
