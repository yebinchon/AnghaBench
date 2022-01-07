
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct int_node {int * priv; } ;


 size_t CS_ETM_MAGIC ;
 int EINVAL ;
 struct int_node* intlist__find (int ,int ) ;
 int traceid_list ;

__attribute__((used)) static int cs_etm__get_magic(u8 trace_chan_id, u64 *magic)
{
 struct int_node *inode;
 u64 *metadata;

 inode = intlist__find(traceid_list, trace_chan_id);
 if (!inode)
  return -EINVAL;

 metadata = inode->priv;
 *magic = metadata[CS_ETM_MAGIC];
 return 0;
}
