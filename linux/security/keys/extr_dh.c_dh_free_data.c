
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh {int g; int p; int key; } ;


 int kzfree (int ) ;

__attribute__((used)) static void dh_free_data(struct dh *dh)
{
 kzfree(dh->key);
 kzfree(dh->p);
 kzfree(dh->g);
}
