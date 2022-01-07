
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_info {int dummy; } ;


 int EINVAL ;
 int UBIFS_LPT_TYPE_BITS ;
 int dump_stack () ;
 int ubifs_err (struct ubifs_info const*,char*,int,int) ;
 int ubifs_unpack_bits (struct ubifs_info const*,int **,int*,int ) ;

__attribute__((used)) static int check_lpt_type(const struct ubifs_info *c, uint8_t **addr,
     int *pos, int type)
{
 int node_type;

 node_type = ubifs_unpack_bits(c, addr, pos, UBIFS_LPT_TYPE_BITS);
 if (node_type != type) {
  ubifs_err(c, "invalid type (%d) in LPT node type %d",
     node_type, type);
  dump_stack();
  return -EINVAL;
 }
 return 0;
}
