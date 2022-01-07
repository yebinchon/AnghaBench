
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int xe_name_len; int xe_name_offset; } ;


 int ML_ERROR ;
 int le16_to_cpu (int ) ;
 int mlog (int ,char*,char const*,char*,...) ;
 char* ocfs2_xa_offset_pointer (struct ocfs2_xa_loc*,int ) ;
 int ocfs2_xa_remove_entry (struct ocfs2_xa_loc*) ;
 unsigned int ocfs2_xa_value_clusters (struct ocfs2_xa_loc*) ;

__attribute__((used)) static void ocfs2_xa_cleanup_value_truncate(struct ocfs2_xa_loc *loc,
         const char *what,
         unsigned int orig_clusters)
{
 unsigned int new_clusters = ocfs2_xa_value_clusters(loc);
 char *nameval_buf = ocfs2_xa_offset_pointer(loc,
    le16_to_cpu(loc->xl_entry->xe_name_offset));

 if (new_clusters < orig_clusters) {
  mlog(ML_ERROR,
       "Partial truncate while %s xattr %.*s.  Leaking "
       "%u clusters and removing the entry\n",
       what, loc->xl_entry->xe_name_len, nameval_buf,
       orig_clusters - new_clusters);
  ocfs2_xa_remove_entry(loc);
 } else if (!orig_clusters) {
  mlog(ML_ERROR,
       "Unable to allocate an external value for xattr "
       "%.*s safely.  Leaking %u clusters and removing the "
       "entry\n",
       loc->xl_entry->xe_name_len, nameval_buf,
       new_clusters - orig_clusters);
  ocfs2_xa_remove_entry(loc);
 } else if (new_clusters > orig_clusters)
  mlog(ML_ERROR,
       "Unable to grow xattr %.*s safely.  %u new clusters "
       "have been added, but the value will not be "
       "modified\n",
       loc->xl_entry->xe_name_len, nameval_buf,
       new_clusters - orig_clusters);
}
