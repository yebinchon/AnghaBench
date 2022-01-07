
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int dummy; } ;


 int __lock_metapage (struct metapage*) ;
 scalar_t__ trylock_metapage (struct metapage*) ;

__attribute__((used)) static inline void lock_metapage(struct metapage *mp)
{
 if (trylock_metapage(mp))
  __lock_metapage(mp);
}
