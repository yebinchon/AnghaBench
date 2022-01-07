
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned char* name; unsigned int len; int hash; } ;
struct dentry {int dummy; } ;


 unsigned int HFS_NAMELEN ;
 int * caseorder ;
 int end_name_hash (unsigned int) ;
 unsigned int init_name_hash (struct dentry const*) ;
 unsigned int partial_name_hash (int ,unsigned int) ;

int hfs_hash_dentry(const struct dentry *dentry, struct qstr *this)
{
 const unsigned char *name = this->name;
 unsigned int hash, len = this->len;

 if (len > HFS_NAMELEN)
  len = HFS_NAMELEN;

 hash = init_name_hash(dentry);
 for (; len; len--)
  hash = partial_name_hash(caseorder[*name++], hash);
 this->hash = end_name_hash(hash);
 return 0;
}
