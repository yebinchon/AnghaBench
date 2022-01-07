
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_tag {int removed; } ;


 int key_put_tag (struct key_tag*) ;
 int key_schedule_gc_links () ;

void key_remove_domain(struct key_tag *domain_tag)
{
 domain_tag->removed = 1;
 if (!key_put_tag(domain_tag))
  key_schedule_gc_links();
}
