
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int dummy; } ;
struct TYPE_2__ {int num_blocks; size_t num_records; struct kvp_record* records; int fname; } ;
typedef int FILE ;


 int ENTRIES_PER_BLOCK ;
 int EXIT_FAILURE ;
 int LOG_ERR ;
 int errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fread (struct kvp_record*,int,int,int *) ;
 int kvp_acquire_lock (int) ;
 TYPE_1__* kvp_file_info ;
 int kvp_release_lock (int) ;
 struct kvp_record* realloc (struct kvp_record*,int) ;
 int strerror (int ) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static void kvp_update_mem_state(int pool)
{
 FILE *filep;
 size_t records_read = 0;
 struct kvp_record *record = kvp_file_info[pool].records;
 struct kvp_record *readp;
 int num_blocks = kvp_file_info[pool].num_blocks;
 int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

 kvp_acquire_lock(pool);

 filep = fopen(kvp_file_info[pool].fname, "re");
 if (!filep) {
  syslog(LOG_ERR, "Failed to open file, pool: %d; error: %d %s", pool,
    errno, strerror(errno));
  kvp_release_lock(pool);
  exit(EXIT_FAILURE);
 }
 for (;;) {
  readp = &record[records_read];
  records_read += fread(readp, sizeof(struct kvp_record),
    ENTRIES_PER_BLOCK * num_blocks - records_read,
    filep);

  if (ferror(filep)) {
   syslog(LOG_ERR,
    "Failed to read file, pool: %d; error: %d %s",
     pool, errno, strerror(errno));
   kvp_release_lock(pool);
   exit(EXIT_FAILURE);
  }

  if (!feof(filep)) {



   num_blocks++;
   record = realloc(record, alloc_unit * num_blocks);

   if (record == ((void*)0)) {
    syslog(LOG_ERR, "malloc failed");
    kvp_release_lock(pool);
    exit(EXIT_FAILURE);
   }
   continue;
  }
  break;
 }

 kvp_file_info[pool].num_blocks = num_blocks;
 kvp_file_info[pool].records = record;
 kvp_file_info[pool].num_records = records_read;

 fclose(filep);
 kvp_release_lock(pool);
}
