
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_ino_node {int padding2; int padding1; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void zero_ino_node_unused(struct ubifs_ino_node *ino)
{
 memset(ino->padding1, 0, 4);
 memset(ino->padding2, 0, 26);
}
