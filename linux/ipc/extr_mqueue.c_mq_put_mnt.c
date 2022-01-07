
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int mq_mnt; } ;


 int kern_unmount (int ) ;

void mq_put_mnt(struct ipc_namespace *ns)
{
 kern_unmount(ns->mq_mnt);
}
