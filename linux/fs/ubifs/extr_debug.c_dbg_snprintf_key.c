
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
struct ubifs_info {int key_fmt; } ;





 int UBIFS_SIMPLE_KEY_FMT ;


 int get_key_type (int) ;
 int key_block (struct ubifs_info const*,union ubifs_key const*) ;
 int key_hash (struct ubifs_info const*,union ubifs_key const*) ;
 scalar_t__ key_inum (struct ubifs_info const*,union ubifs_key const*) ;
 int key_type (struct ubifs_info const*,union ubifs_key const*) ;
 scalar_t__ snprintf (char*,int,char*,int,...) ;
 int ubifs_assert (struct ubifs_info const*,int) ;

const char *dbg_snprintf_key(const struct ubifs_info *c,
        const union ubifs_key *key, char *buffer, int len)
{
 char *p = buffer;
 int type = key_type(c, key);

 if (c->key_fmt == UBIFS_SIMPLE_KEY_FMT) {
  switch (type) {
  case 130:
   len -= snprintf(p, len, "(%lu, %s)",
     (unsigned long)key_inum(c, key),
     get_key_type(type));
   break;
  case 131:
  case 128:
   len -= snprintf(p, len, "(%lu, %s, %#08x)",
     (unsigned long)key_inum(c, key),
     get_key_type(type), key_hash(c, key));
   break;
  case 132:
   len -= snprintf(p, len, "(%lu, %s, %u)",
     (unsigned long)key_inum(c, key),
     get_key_type(type), key_block(c, key));
   break;
  case 129:
   len -= snprintf(p, len, "(%lu, %s)",
     (unsigned long)key_inum(c, key),
     get_key_type(type));
   break;
  default:
   len -= snprintf(p, len, "(bad key type: %#08x, %#08x)",
     key->u32[0], key->u32[1]);
  }
 } else
  len -= snprintf(p, len, "bad key format %d", c->key_fmt);
 ubifs_assert(c, len > 0);
 return p;
}
