
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int nr_autogrow; scalar_t__ nr_alloc; scalar_t__ nr; int * priv; int * entries; } ;



void fdarray__init(struct fdarray *fda, int nr_autogrow)
{
 fda->entries = ((void*)0);
 fda->priv = ((void*)0);
 fda->nr = fda->nr_alloc = 0;
 fda->nr_autogrow = nr_autogrow;
}
