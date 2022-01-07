
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_control {struct rs_control* genpoly; struct rs_control* index_of; struct rs_control* alpha_to; int list; int users; struct rs_control* codec; } ;
struct rs_codec {struct rs_codec* genpoly; struct rs_codec* index_of; struct rs_codec* alpha_to; int list; int users; struct rs_codec* codec; } ;


 int kfree (struct rs_control*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rslistlock ;

void free_rs(struct rs_control *rs)
{
 struct rs_codec *cd;

 if (!rs)
  return;

 cd = rs->codec;
 mutex_lock(&rslistlock);
 cd->users--;
 if(!cd->users) {
  list_del(&cd->list);
  kfree(cd->alpha_to);
  kfree(cd->index_of);
  kfree(cd->genpoly);
  kfree(cd);
 }
 mutex_unlock(&rslistlock);
 kfree(rs);
}
