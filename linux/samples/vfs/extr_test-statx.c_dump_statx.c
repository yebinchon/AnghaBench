
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statx {int stx_mask; int stx_mode; int stx_dev_major; int stx_dev_minor; int stx_nlink; int stx_rdev_major; int stx_rdev_minor; int stx_uid; int stx_gid; int stx_attributes_mask; int stx_attributes; int stx_btime; int stx_ctime; int stx_mtime; int stx_atime; scalar_t__ stx_ino; scalar_t__ stx_blksize; scalar_t__ stx_blocks; scalar_t__ stx_size; } ;


 int STATX_ATIME ;
 int STATX_BLOCKS ;
 int STATX_BTIME ;
 int STATX_CTIME ;
 int STATX_GID ;
 int STATX_INO ;
 int STATX_MODE ;
 int STATX_MTIME ;
 int STATX_NLINK ;
 int STATX_SIZE ;
 int STATX_TYPE ;
 int STATX_UID ;





 int S_IFMT ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int print_time (char*,int *) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void dump_statx(struct statx *stx)
{
 char buffer[256], ft = '?';

 printf("results=%x\n", stx->stx_mask);

 printf(" ");
 if (stx->stx_mask & STATX_SIZE)
  printf(" Size: %-15llu", (unsigned long long)stx->stx_size);
 if (stx->stx_mask & STATX_BLOCKS)
  printf(" Blocks: %-10llu", (unsigned long long)stx->stx_blocks);
 printf(" IO Block: %-6llu", (unsigned long long)stx->stx_blksize);
 if (stx->stx_mask & STATX_TYPE) {
  switch (stx->stx_mode & S_IFMT) {
  case 131: printf("  FIFO\n"); ft = 'p'; break;
  case 133: printf("  character special file\n"); ft = 'c'; break;
  case 132: printf("  directory\n"); ft = 'd'; break;
  case 134: printf("  block special file\n"); ft = 'b'; break;
  case 129: printf("  regular file\n"); ft = '-'; break;
  case 130: printf("  symbolic link\n"); ft = 'l'; break;
  case 128: printf("  socket\n"); ft = 's'; break;
  default:
   printf(" unknown type (%o)\n", stx->stx_mode & S_IFMT);
   break;
  }
 } else {
  printf(" no type\n");
 }

 sprintf(buffer, "%02x:%02x", stx->stx_dev_major, stx->stx_dev_minor);
 printf("Device: %-15s", buffer);
 if (stx->stx_mask & STATX_INO)
  printf(" Inode: %-11llu", (unsigned long long) stx->stx_ino);
 if (stx->stx_mask & STATX_NLINK)
  printf(" Links: %-5u", stx->stx_nlink);
 if (stx->stx_mask & STATX_TYPE) {
  switch (stx->stx_mode & S_IFMT) {
  case 134:
  case 133:
   printf(" Device type: %u,%u",
          stx->stx_rdev_major, stx->stx_rdev_minor);
   break;
  }
 }
 printf("\n");

 if (stx->stx_mask & STATX_MODE)
  printf("Access: (%04o/%c%c%c%c%c%c%c%c%c%c)  ",
         stx->stx_mode & 07777,
         ft,
         stx->stx_mode & S_IRUSR ? 'r' : '-',
         stx->stx_mode & S_IWUSR ? 'w' : '-',
         stx->stx_mode & S_IXUSR ? 'x' : '-',
         stx->stx_mode & S_IRGRP ? 'r' : '-',
         stx->stx_mode & S_IWGRP ? 'w' : '-',
         stx->stx_mode & S_IXGRP ? 'x' : '-',
         stx->stx_mode & S_IROTH ? 'r' : '-',
         stx->stx_mode & S_IWOTH ? 'w' : '-',
         stx->stx_mode & S_IXOTH ? 'x' : '-');
 if (stx->stx_mask & STATX_UID)
  printf("Uid: %5d   ", stx->stx_uid);
 if (stx->stx_mask & STATX_GID)
  printf("Gid: %5d\n", stx->stx_gid);

 if (stx->stx_mask & STATX_ATIME)
  print_time("Access: ", &stx->stx_atime);
 if (stx->stx_mask & STATX_MTIME)
  print_time("Modify: ", &stx->stx_mtime);
 if (stx->stx_mask & STATX_CTIME)
  print_time("Change: ", &stx->stx_ctime);
 if (stx->stx_mask & STATX_BTIME)
  print_time(" Birth: ", &stx->stx_btime);

 if (stx->stx_attributes_mask) {
  unsigned char bits, mbits;
  int loop, byte;

  static char attr_representation[64 + 1] =

   "????????"
   "????????"
   "????????"
   "????????"
   "????????"
   "????????"
   "???me???"
   "?dai?c??"
   ;

  printf("Attributes: %016llx (",
         (unsigned long long)stx->stx_attributes);
  for (byte = 64 - 8; byte >= 0; byte -= 8) {
   bits = stx->stx_attributes >> byte;
   mbits = stx->stx_attributes_mask >> byte;
   for (loop = 7; loop >= 0; loop--) {
    int bit = byte + loop;

    if (!(mbits & 0x80))
     putchar('.');
    else if (bits & 0x80)
     putchar(attr_representation[63 - bit]);
    else
     putchar('-');
    bits <<= 1;
    mbits <<= 1;
   }
   if (byte)
    putchar(' ');
  }
  printf(")\n");
 }
}
