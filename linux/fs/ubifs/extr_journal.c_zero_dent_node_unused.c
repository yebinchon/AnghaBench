
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_dent_node {scalar_t__ padding1; } ;



__attribute__((used)) static inline void zero_dent_node_unused(struct ubifs_dent_node *dent)
{
 dent->padding1 = 0;
}
