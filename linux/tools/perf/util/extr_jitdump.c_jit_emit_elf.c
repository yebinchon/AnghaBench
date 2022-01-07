
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int jit_write_elf (int,int ,char const*,void const*,int,void*,int,void*,int ,int ) ;
 int open (char*,int,int) ;
 int pr_warning (char*,char*,int ) ;
 int stderr ;
 int strerror (int ) ;
 int unlink (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
jit_emit_elf(char *filename,
      const char *sym,
      uint64_t code_addr,
      const void *code,
      int csize,
      void *debug,
      int nr_debug_entries,
      void *unwinding,
      uint32_t unwinding_header_size,
      uint32_t unwinding_size)
{
 int ret, fd;

 if (verbose > 0)
  fprintf(stderr, "write ELF image %s\n", filename);

 fd = open(filename, O_CREAT|O_TRUNC|O_WRONLY, 0644);
 if (fd == -1) {
  pr_warning("cannot create jit ELF %s: %s\n", filename, strerror(errno));
  return -1;
 }

 ret = jit_write_elf(fd, code_addr, sym, (const void *)code, csize, debug, nr_debug_entries,
       unwinding, unwinding_header_size, unwinding_size);

        close(fd);

        if (ret)
                unlink(filename);

 return ret;
}
