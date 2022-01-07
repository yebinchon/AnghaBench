
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_node {unsigned long shift; } ;


 unsigned long XA_CHUNK_MASK ;

__attribute__((used)) static unsigned int get_offset(unsigned long index, struct xa_node *node)
{
 return (index >> node->shift) & XA_CHUNK_MASK;
}
