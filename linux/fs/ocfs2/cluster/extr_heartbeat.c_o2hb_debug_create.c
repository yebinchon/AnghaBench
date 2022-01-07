
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_debug_buf {int db_type; int db_size; int db_len; void* db_data; } ;
struct dentry {int dummy; } ;


 int GFP_KERNEL ;
 int S_IFREG ;
 int S_IRUSR ;
 int debugfs_create_file (char const*,int,struct dentry*,struct o2hb_debug_buf*,int *) ;
 struct o2hb_debug_buf* kmalloc (int,int ) ;
 int o2hb_debug_fops ;

__attribute__((used)) static void o2hb_debug_create(const char *name, struct dentry *dir,
         struct o2hb_debug_buf **db, int db_len, int type,
         int size, int len, void *data)
{
 *db = kmalloc(db_len, GFP_KERNEL);
 if (!*db)
  return;

 (*db)->db_type = type;
 (*db)->db_size = size;
 (*db)->db_len = len;
 (*db)->db_data = data;

 debugfs_create_file(name, S_IFREG|S_IRUSR, dir, *db, &o2hb_debug_fops);
}
