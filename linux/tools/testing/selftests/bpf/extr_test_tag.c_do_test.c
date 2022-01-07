
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ftag ;
typedef int atag ;


 int BPF_MAXINSNS ;
 int bpf_try_load_prog (int,int,void (*) (unsigned int,int)) ;
 int close (int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int sched_yield () ;
 int tag_exit_report (int,int,int *,int *,int) ;
 int tag_from_alg (int,int *,int) ;
 int tag_from_fdinfo (int,int *,int) ;

__attribute__((used)) static void do_test(uint32_t *tests, int start_insns, int fd_map,
      void (*bpf_filler)(unsigned int insns, int fd))
{
 int i, fd_prog;

 for (i = start_insns; i <= BPF_MAXINSNS; i++) {
  uint8_t ftag[8], atag[sizeof(ftag)];

  fd_prog = bpf_try_load_prog(i, fd_map, bpf_filler);
  tag_from_fdinfo(fd_prog, ftag, sizeof(ftag));
  tag_from_alg(i, atag, sizeof(atag));
  if (memcmp(ftag, atag, sizeof(ftag)))
   tag_exit_report(i, fd_map, ftag, atag, sizeof(ftag));

  close(fd_prog);
  sched_yield();
  (*tests)++;
 }
}
