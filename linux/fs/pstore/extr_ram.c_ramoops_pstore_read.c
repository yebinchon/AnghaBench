
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ramoops_context {scalar_t__ dump_read_cnt; scalar_t__ max_dump_cnt; int flags; scalar_t__ ftrace_read_cnt; scalar_t__ max_ftrace_cnt; int * fprzs; int mprz; int pmsg_read_cnt; int cprz; int console_read_cnt; int * dprzs; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct pstore_record {int compressed; scalar_t__ ecc_notice_size; int * buf; scalar_t__ id; TYPE_2__ time; TYPE_1__* psi; } ;
struct persistent_ram_zone {struct persistent_ram_zone* old_log; scalar_t__ bad_blocks; scalar_t__ corrected_bytes; int ecc_info; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct ramoops_context* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RAMOOPS_FLAG_FTRACE_PER_CPU ;
 int ftrace_log_combine (struct persistent_ram_zone*,struct persistent_ram_zone*) ;
 int kfree (struct persistent_ram_zone*) ;
 int * kmalloc (scalar_t__,int ) ;
 struct persistent_ram_zone* kzalloc (int,int ) ;
 int memcpy (int *,char*,int) ;
 scalar_t__ persistent_ram_ecc_string (struct persistent_ram_zone*,int *,scalar_t__) ;
 int persistent_ram_free_old (struct persistent_ram_zone*) ;
 scalar_t__ persistent_ram_old (struct persistent_ram_zone*) ;
 int persistent_ram_old_size (struct persistent_ram_zone*) ;
 int persistent_ram_zap (struct persistent_ram_zone*) ;
 int prz_ok (struct persistent_ram_zone*) ;
 struct persistent_ram_zone* ramoops_get_next_prz (int *,int ,struct pstore_record*) ;
 int ramoops_read_kmsg_hdr (scalar_t__,TYPE_2__*,int*) ;

__attribute__((used)) static ssize_t ramoops_pstore_read(struct pstore_record *record)
{
 ssize_t size = 0;
 struct ramoops_context *cxt = record->psi->data;
 struct persistent_ram_zone *prz = ((void*)0);
 int header_length = 0;
 bool free_prz = 0;






 record->time.tv_sec = 0;
 record->time.tv_nsec = 0;
 record->compressed = 0;


 while (cxt->dump_read_cnt < cxt->max_dump_cnt && !prz) {
  prz = ramoops_get_next_prz(cxt->dprzs, cxt->dump_read_cnt++,
        record);
  if (!prz_ok(prz))
   continue;
  header_length = ramoops_read_kmsg_hdr(persistent_ram_old(prz),
            &record->time,
            &record->compressed);

  if (!header_length) {
   persistent_ram_free_old(prz);
   persistent_ram_zap(prz);
   prz = ((void*)0);
  }
 }

 if (!prz_ok(prz) && !cxt->console_read_cnt++)
  prz = ramoops_get_next_prz(&cxt->cprz, 0 , record);

 if (!prz_ok(prz) && !cxt->pmsg_read_cnt++)
  prz = ramoops_get_next_prz(&cxt->mprz, 0 , record);


 if (!prz_ok(prz)) {
  if (!(cxt->flags & RAMOOPS_FLAG_FTRACE_PER_CPU) &&
      !cxt->ftrace_read_cnt++) {
   prz = ramoops_get_next_prz(cxt->fprzs, 0 ,
         record);
  } else {




   struct persistent_ram_zone *tmp_prz, *prz_next;

   tmp_prz = kzalloc(sizeof(struct persistent_ram_zone),
       GFP_KERNEL);
   if (!tmp_prz)
    return -ENOMEM;
   prz = tmp_prz;
   free_prz = 1;

   while (cxt->ftrace_read_cnt < cxt->max_ftrace_cnt) {
    prz_next = ramoops_get_next_prz(cxt->fprzs,
      cxt->ftrace_read_cnt++, record);

    if (!prz_ok(prz_next))
     continue;

    tmp_prz->ecc_info = prz_next->ecc_info;
    tmp_prz->corrected_bytes +=
      prz_next->corrected_bytes;
    tmp_prz->bad_blocks += prz_next->bad_blocks;
    size = ftrace_log_combine(tmp_prz, prz_next);
    if (size)
     goto out;
   }
   record->id = 0;
  }
 }

 if (!prz_ok(prz)) {
  size = 0;
  goto out;
 }

 size = persistent_ram_old_size(prz) - header_length;


 record->ecc_notice_size = persistent_ram_ecc_string(prz, ((void*)0), 0);

 record->buf = kmalloc(size + record->ecc_notice_size + 1, GFP_KERNEL);
 if (record->buf == ((void*)0)) {
  size = -ENOMEM;
  goto out;
 }

 memcpy(record->buf, (char *)persistent_ram_old(prz) + header_length,
        size);

 persistent_ram_ecc_string(prz, record->buf + size,
      record->ecc_notice_size + 1);

out:
 if (free_prz) {
  kfree(prz->old_log);
  kfree(prz);
 }

 return size;
}
