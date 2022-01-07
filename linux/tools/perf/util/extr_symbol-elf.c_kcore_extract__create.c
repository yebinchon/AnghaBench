
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore_extract {int extract_filename; int len; int offs; int addr; int kcore_filename; } ;
struct kcore {int fd; int elfclass; } ;
typedef scalar_t__ off_t ;


 int PERF_KCORE_EXTRACT ;
 scalar_t__ copy_bytes (int ,int ,int ,scalar_t__,int ) ;
 scalar_t__ kcore__add_phdr (struct kcore*,int,scalar_t__,int ,int ) ;
 int kcore__close (struct kcore*) ;
 scalar_t__ kcore__copy_hdr (struct kcore*,struct kcore*,size_t) ;
 scalar_t__ kcore__init (struct kcore*,int ,int ,int) ;
 scalar_t__ kcore__open (struct kcore*,int ) ;
 scalar_t__ kcore__write (struct kcore*) ;
 scalar_t__ page_size ;
 int strcpy (int ,int ) ;
 int unlink (int ) ;

int kcore_extract__create(struct kcore_extract *kce)
{
 struct kcore kcore;
 struct kcore extract;
 size_t count = 1;
 int idx = 0, err = -1;
 off_t offset = page_size, sz;

 if (kcore__open(&kcore, kce->kcore_filename))
  return -1;

 strcpy(kce->extract_filename, PERF_KCORE_EXTRACT);
 if (kcore__init(&extract, kce->extract_filename, kcore.elfclass, 1))
  goto out_kcore_close;

 if (kcore__copy_hdr(&kcore, &extract, count))
  goto out_extract_close;

 if (kcore__add_phdr(&extract, idx, offset, kce->addr, kce->len))
  goto out_extract_close;

 sz = kcore__write(&extract);
 if (sz < 0 || sz > offset)
  goto out_extract_close;

 if (copy_bytes(kcore.fd, kce->offs, extract.fd, offset, kce->len))
  goto out_extract_close;

 err = 0;

out_extract_close:
 kcore__close(&extract);
 if (err)
  unlink(kce->extract_filename);
out_kcore_close:
 kcore__close(&kcore);

 return err;
}
