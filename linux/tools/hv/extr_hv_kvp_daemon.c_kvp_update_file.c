
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int dummy; } ;
struct TYPE_2__ {int num_records; int records; int fname; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int LOG_ERR ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (int ,int,int ,int *) ;
 int kvp_acquire_lock (int) ;
 TYPE_1__* kvp_file_info ;
 int kvp_release_lock (int) ;
 int strerror (int ) ;
 int syslog (int ,char*,int,...) ;

__attribute__((used)) static void kvp_update_file(int pool)
{
 FILE *filep;





 kvp_acquire_lock(pool);

 filep = fopen(kvp_file_info[pool].fname, "we");
 if (!filep) {
  syslog(LOG_ERR, "Failed to open file, pool: %d; error: %d %s", pool,
    errno, strerror(errno));
  kvp_release_lock(pool);
  exit(EXIT_FAILURE);
 }

 fwrite(kvp_file_info[pool].records, sizeof(struct kvp_record),
    kvp_file_info[pool].num_records, filep);

 if (ferror(filep) || fclose(filep)) {
  kvp_release_lock(pool);
  syslog(LOG_ERR, "Failed to write file, pool: %d", pool);
  exit(EXIT_FAILURE);
 }

 kvp_release_lock(pool);
}
