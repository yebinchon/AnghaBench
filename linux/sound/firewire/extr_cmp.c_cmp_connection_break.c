
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int connected; int mutex; } ;


 int SUCCEED_ON_BUS_RESET ;
 int cmp_error (struct cmp_connection*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcr_break_modify ;
 int pcr_modify (struct cmp_connection*,int ,int *,int ) ;

void cmp_connection_break(struct cmp_connection *c)
{
 int err;

 mutex_lock(&c->mutex);

 if (!c->connected) {
  mutex_unlock(&c->mutex);
  return;
 }

 err = pcr_modify(c, pcr_break_modify, ((void*)0), SUCCEED_ON_BUS_RESET);
 if (err < 0)
  cmp_error(c, "plug is still connected\n");

 c->connected = 0;

 mutex_unlock(&c->mutex);
}
