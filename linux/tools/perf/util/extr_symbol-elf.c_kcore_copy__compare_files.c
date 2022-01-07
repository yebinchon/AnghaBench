
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int kcore_copy__compare_fds (int,int) ;
 int open (char const*,int ) ;

__attribute__((used)) static int kcore_copy__compare_files(const char *from_filename,
         const char *to_filename)
{
 int from, to, err = -1;

 from = open(from_filename, O_RDONLY);
 if (from < 0)
  return -1;

 to = open(to_filename, O_RDONLY);
 if (to < 0)
  goto out_close_from;

 err = kcore_copy__compare_fds(from, to);

 close(to);
out_close_from:
 close(from);
 return err;
}
