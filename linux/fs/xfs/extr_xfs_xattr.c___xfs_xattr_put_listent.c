
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {int count; int seen_enough; int firstu; scalar_t__ alist; } ;


 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
__xfs_xattr_put_listent(
 struct xfs_attr_list_context *context,
 char *prefix,
 int prefix_len,
 unsigned char *name,
 int namelen)
{
 char *offset;
 int arraytop;

 if (context->count < 0 || context->seen_enough)
  return;

 if (!context->alist)
  goto compute_size;

 arraytop = context->count + prefix_len + namelen + 1;
 if (arraytop > context->firstu) {
  context->count = -1;
  context->seen_enough = 1;
  return;
 }
 offset = (char *)context->alist + context->count;
 strncpy(offset, prefix, prefix_len);
 offset += prefix_len;
 strncpy(offset, (char *)name, namelen);
 offset += namelen;
 *offset = '\0';

compute_size:
 context->count += prefix_len + namelen + 1;
 return;
}
