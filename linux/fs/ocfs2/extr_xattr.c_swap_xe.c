
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int dummy; } ;


 int memcpy (struct ocfs2_xattr_entry*,struct ocfs2_xattr_entry*,int) ;

__attribute__((used)) static void swap_xe(void *a, void *b, int size)
{
 struct ocfs2_xattr_entry *l = a, *r = b, tmp;

 tmp = *l;
 memcpy(l, r, sizeof(struct ocfs2_xattr_entry));
 memcpy(r, &tmp, sizeof(struct ocfs2_xattr_entry));
}
