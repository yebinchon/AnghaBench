
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct ubifs_ch {scalar_t__ magic; int len; } ;
struct shash_desc {int dummy; } ;


 scalar_t__ ALIGN (int,int) ;
 int UBIFS_NODE_MAGIC ;
 scalar_t__ cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_auth_node_sz (struct ubifs_info*) ;
 int ubifs_prepare_auth_node (struct ubifs_info*,void*,struct shash_desc*) ;
 int ubifs_shash_update (struct ubifs_info*,struct shash_desc*,void*,int) ;

__attribute__((used)) static int ubifs_hash_nodes(struct ubifs_info *c, void *node,
        int len, struct shash_desc *hash)
{
 int auth_node_size = ubifs_auth_node_sz(c);
 int err;

 while (1) {
  const struct ubifs_ch *ch = node;
  int nodelen = le32_to_cpu(ch->len);

  ubifs_assert(c, len >= auth_node_size);

  if (len == auth_node_size)
   break;

  ubifs_assert(c, len > nodelen);
  ubifs_assert(c, ch->magic == cpu_to_le32(UBIFS_NODE_MAGIC));

  err = ubifs_shash_update(c, hash, (void *)node, nodelen);
  if (err)
   return err;

  node += ALIGN(nodelen, 8);
  len -= ALIGN(nodelen, 8);
 }

 return ubifs_prepare_auth_node(c, node, hash);
}
