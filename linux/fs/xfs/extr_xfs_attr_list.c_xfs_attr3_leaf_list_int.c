
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int namelen; int valuelen; } ;
typedef TYPE_2__ xfs_attr_leaf_name_remote_t ;
struct TYPE_8__ {char* nameval; int namelen; int valuelen; } ;
typedef TYPE_3__ xfs_attr_leaf_name_local_t ;
struct xfs_mount {int m_attr_geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_list_context {scalar_t__ dupcnt; int flags; scalar_t__ seen_enough; int (* put_listent ) (struct xfs_attr_list_context*,int,char*,int,int) ;scalar_t__ resynch; struct attrlist_cursor_kern* cursor; TYPE_1__* dp; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_entry {int flags; int hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
struct attrlist_cursor_kern {int initted; scalar_t__ hashval; scalar_t__ offset; } ;
struct TYPE_6__ {struct xfs_mount* i_mount; } ;


 int ATTR_INCOMPLETE ;
 int XFS_ATTR_INCOMPLETE ;
 int XFS_ATTR_LOCAL ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int stub1 (struct xfs_attr_list_context*,int,char*,int,int) ;
 int trace_xfs_attr_list_leaf (struct xfs_attr_list_context*) ;
 int trace_xfs_attr_list_leaf_end (struct xfs_attr_list_context*) ;
 int trace_xfs_attr_list_notfound (struct xfs_attr_list_context*) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 TYPE_3__* xfs_attr3_leaf_name_local (struct xfs_attr_leafblock*,int) ;
 TYPE_2__* xfs_attr3_leaf_name_remote (struct xfs_attr_leafblock*,int) ;

void
xfs_attr3_leaf_list_int(
 struct xfs_buf *bp,
 struct xfs_attr_list_context *context)
{
 struct attrlist_cursor_kern *cursor;
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_attr_leaf_entry *entries;
 struct xfs_attr_leaf_entry *entry;
 int i;
 struct xfs_mount *mp = context->dp->i_mount;

 trace_xfs_attr_list_leaf(context);

 leaf = bp->b_addr;
 xfs_attr3_leaf_hdr_from_disk(mp->m_attr_geo, &ichdr, leaf);
 entries = xfs_attr3_leaf_entryp(leaf);

 cursor = context->cursor;
 cursor->initted = 1;




 if (context->resynch) {
  entry = &entries[0];
  for (i = 0; i < ichdr.count; entry++, i++) {
   if (be32_to_cpu(entry->hashval) == cursor->hashval) {
    if (cursor->offset == context->dupcnt) {
     context->dupcnt = 0;
     break;
    }
    context->dupcnt++;
   } else if (be32_to_cpu(entry->hashval) >
     cursor->hashval) {
    context->dupcnt = 0;
    break;
   }
  }
  if (i == ichdr.count) {
   trace_xfs_attr_list_notfound(context);
   return;
  }
 } else {
  entry = &entries[0];
  i = 0;
 }
 context->resynch = 0;




 for (; i < ichdr.count; entry++, i++) {
  char *name;
  int namelen, valuelen;

  if (be32_to_cpu(entry->hashval) != cursor->hashval) {
   cursor->hashval = be32_to_cpu(entry->hashval);
   cursor->offset = 0;
  }

  if ((entry->flags & XFS_ATTR_INCOMPLETE) &&
      !(context->flags & ATTR_INCOMPLETE))
   continue;

  if (entry->flags & XFS_ATTR_LOCAL) {
   xfs_attr_leaf_name_local_t *name_loc;

   name_loc = xfs_attr3_leaf_name_local(leaf, i);
   name = name_loc->nameval;
   namelen = name_loc->namelen;
   valuelen = be16_to_cpu(name_loc->valuelen);
  } else {
   xfs_attr_leaf_name_remote_t *name_rmt;

   name_rmt = xfs_attr3_leaf_name_remote(leaf, i);
   name = name_rmt->name;
   namelen = name_rmt->namelen;
   valuelen = be32_to_cpu(name_rmt->valuelen);
  }

  context->put_listent(context, entry->flags,
           name, namelen, valuelen);
  if (context->seen_enough)
   break;
  cursor->offset++;
 }
 trace_xfs_attr_list_leaf_end(context);
 return;
}
