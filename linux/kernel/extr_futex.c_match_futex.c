
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ word; scalar_t__ ptr; scalar_t__ offset; } ;
union futex_key {TYPE_1__ both; } ;



__attribute__((used)) static inline int match_futex(union futex_key *key1, union futex_key *key2)
{
 return (key1 && key2
  && key1->both.word == key2->both.word
  && key1->both.ptr == key2->both.ptr
  && key1->both.offset == key2->both.offset);
}
