
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_ref {int xseqno; } ;


 int XREF_DELETE_MARKER ;

__attribute__((used)) static inline int is_xattr_ref_dead(struct jffs2_xattr_ref *ref)
{
 return ((ref->xseqno & XREF_DELETE_MARKER) != 0);
}
