
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int dummy; } ;
struct msi_desc {struct msi_msg msg; } ;



void __get_cached_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
{
 *msg = entry->msg;
}
