
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;


 int dst_release (struct dst_entry*) ;

__attribute__((used)) static struct dst_entry *dn_dst_negative_advice(struct dst_entry *dst)
{
 dst_release(dst);
 return ((void*)0);
}
