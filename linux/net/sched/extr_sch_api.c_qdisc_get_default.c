
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;


 TYPE_1__* default_qdisc_ops ;
 int qdisc_mod_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int strlcpy (char*,int ,size_t) ;

void qdisc_get_default(char *name, size_t len)
{
 read_lock(&qdisc_mod_lock);
 strlcpy(name, default_qdisc_ops->id, len);
 read_unlock(&qdisc_mod_lock);
}
