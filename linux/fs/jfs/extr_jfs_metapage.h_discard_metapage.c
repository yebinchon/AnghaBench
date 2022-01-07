
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int flag; } ;


 int META_dirty ;
 int META_discard ;
 int clear_bit (int ,int *) ;
 int release_metapage (struct metapage*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void discard_metapage(struct metapage *mp)
{
 clear_bit(META_dirty, &mp->flag);
 set_bit(META_discard, &mp->flag);
 release_metapage(mp);
}
