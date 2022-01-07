
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {scalar_t__ size; struct pstore_record* buf; } ;
struct pstore_info {scalar_t__ (* read ) (struct pstore_record*) ;int name; int read_mutex; int (* close ) (struct pstore_info*) ;scalar_t__ (* open ) (struct pstore_info*) ;} ;
struct dentry {int dummy; } ;


 int EEXIST ;
 int GFP_KERNEL ;
 int decompress_record (struct pstore_record*) ;
 int kfree (struct pstore_record*) ;
 struct pstore_record* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int pr_warn (char*,int,int ) ;
 int pstore_mkfile (struct dentry*,struct pstore_record*) ;
 int pstore_record_init (struct pstore_record*,struct pstore_info*) ;
 scalar_t__ stub1 (struct pstore_info*) ;
 scalar_t__ stub2 (struct pstore_record*) ;
 int stub3 (struct pstore_info*) ;

void pstore_get_backend_records(struct pstore_info *psi,
    struct dentry *root, int quiet)
{
 int failed = 0;
 unsigned int stop_loop = 65536;

 if (!psi || !root)
  return;

 mutex_lock(&psi->read_mutex);
 if (psi->open && psi->open(psi))
  goto out;






 for (; stop_loop; stop_loop--) {
  struct pstore_record *record;
  int rc;

  record = kzalloc(sizeof(*record), GFP_KERNEL);
  if (!record) {
   pr_err("out of memory creating record\n");
   break;
  }
  pstore_record_init(record, psi);

  record->size = psi->read(record);


  if (record->size <= 0) {
   kfree(record);
   break;
  }

  decompress_record(record);
  rc = pstore_mkfile(root, record);
  if (rc) {

   kfree(record->buf);
   kfree(record);
   if (rc != -EEXIST || !quiet)
    failed++;
  }
 }
 if (psi->close)
  psi->close(psi);
out:
 mutex_unlock(&psi->read_mutex);

 if (failed)
  pr_warn("failed to create %d record(s) from '%s'\n",
   failed, psi->name);
 if (!stop_loop)
  pr_err("looping? Too many records seen from '%s'\n",
   psi->name);
}
