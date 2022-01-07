
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvp_record {int dummy; } ;
struct TYPE_2__ {char* fname; int fd; int num_blocks; scalar_t__ num_records; int * records; } ;


 int ENTRIES_PER_BLOCK ;
 int EXIT_FAILURE ;
 int F_OK ;
 char* KVP_CONFIG_LOC ;
 int KVP_POOL_COUNT ;
 int LOG_ERR ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_RDWR ;
 scalar_t__ access (char*,int ) ;
 int errno ;
 int exit (int ) ;
 TYPE_1__* kvp_file_info ;
 int kvp_update_mem_state (int) ;
 int * malloc (int) ;
 scalar_t__ mkdir (char*,int) ;
 int open (char*,int,int) ;
 int sprintf (char*,char*,char*,int) ;
 int strerror (int ) ;
 int syslog (int ,char*,char*,int ,int ) ;

__attribute__((used)) static int kvp_file_init(void)
{
 int fd;
 char *fname;
 int i;
 int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

 if (access(KVP_CONFIG_LOC, F_OK)) {
  if (mkdir(KVP_CONFIG_LOC, 0755 )) {
   syslog(LOG_ERR, "Failed to create '%s'; error: %d %s", KVP_CONFIG_LOC,
     errno, strerror(errno));
   exit(EXIT_FAILURE);
  }
 }

 for (i = 0; i < KVP_POOL_COUNT; i++) {
  fname = kvp_file_info[i].fname;
  sprintf(fname, "%s/.kvp_pool_%d", KVP_CONFIG_LOC, i);
  fd = open(fname, O_RDWR | O_CREAT | O_CLOEXEC, 0644 );

  if (fd == -1)
   return 1;

  kvp_file_info[i].fd = fd;
  kvp_file_info[i].num_blocks = 1;
  kvp_file_info[i].records = malloc(alloc_unit);
  if (kvp_file_info[i].records == ((void*)0))
   return 1;
  kvp_file_info[i].num_records = 0;
  kvp_update_mem_state(i);
 }

 return 0;
}
