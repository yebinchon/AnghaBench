
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;


 int get_anon_bdev (int *) ;

int set_anon_super(struct super_block *s, void *data)
{
 return get_anon_bdev(&s->s_dev);
}
