
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_decompressor {int name; int supported; } ;
struct fs_context {int dummy; } ;


 short SQUASHFS_MAJOR ;
 short SQUASHFS_MINOR ;
 int errorf (struct fs_context*,char*,...) ;
 struct squashfs_decompressor* squashfs_lookup_decompressor (short) ;

__attribute__((used)) static const struct squashfs_decompressor *supported_squashfs_filesystem(
 struct fs_context *fc,
 short major, short minor, short id)
{
 const struct squashfs_decompressor *decompressor;

 if (major < SQUASHFS_MAJOR) {
  errorf(fc, "Major/Minor mismatch, older Squashfs %d.%d "
         "filesystems are unsupported", major, minor);
  return ((void*)0);
 } else if (major > SQUASHFS_MAJOR || minor > SQUASHFS_MINOR) {
  errorf(fc, "Major/Minor mismatch, trying to mount newer "
         "%d.%d filesystem", major, minor);
  errorf(fc, "Please update your kernel");
  return ((void*)0);
 }

 decompressor = squashfs_lookup_decompressor(id);
 if (!decompressor->supported) {
  errorf(fc, "Filesystem uses \"%s\" compression. This is not supported",
         decompressor->name);
  return ((void*)0);
 }

 return decompressor;
}
