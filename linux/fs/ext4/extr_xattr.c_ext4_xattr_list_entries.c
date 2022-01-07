
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {char* name; int prefix; scalar_t__ (* list ) (struct dentry*) ;} ;
struct ext4_xattr_entry {size_t e_name_len; char const* e_name; int e_name_index; } ;
struct dentry {int dummy; } ;


 int ERANGE ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 struct xattr_handler* ext4_xattr_handler (int ) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ stub1 (struct dentry*) ;

__attribute__((used)) static int
ext4_xattr_list_entries(struct dentry *dentry, struct ext4_xattr_entry *entry,
   char *buffer, size_t buffer_size)
{
 size_t rest = buffer_size;

 for (; !IS_LAST_ENTRY(entry); entry = EXT4_XATTR_NEXT(entry)) {
  const struct xattr_handler *handler =
   ext4_xattr_handler(entry->e_name_index);

  if (handler && (!handler->list || handler->list(dentry))) {
   const char *prefix = handler->prefix ?: handler->name;
   size_t prefix_len = strlen(prefix);
   size_t size = prefix_len + entry->e_name_len + 1;

   if (buffer) {
    if (size > rest)
     return -ERANGE;
    memcpy(buffer, prefix, prefix_len);
    buffer += prefix_len;
    memcpy(buffer, entry->e_name, entry->e_name_len);
    buffer += entry->e_name_len;
    *buffer++ = 0;
   }
   rest -= size;
  }
 }
 return buffer_size - rest;
}
