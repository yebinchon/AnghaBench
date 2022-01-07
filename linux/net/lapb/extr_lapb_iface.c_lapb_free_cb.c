
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int dummy; } ;


 int kfree (struct lapb_cb*) ;

__attribute__((used)) static void lapb_free_cb(struct lapb_cb *lapb)
{
 kfree(lapb);
}
