
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int dummy; } ;


 int mempool_free (struct metapage*,int ) ;
 int metapage_mempool ;

__attribute__((used)) static inline void free_metapage(struct metapage *mp)
{
 mempool_free(mp, metapage_mempool);
}
