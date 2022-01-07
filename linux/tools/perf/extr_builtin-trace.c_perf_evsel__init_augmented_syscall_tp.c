
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int offset; int size; } ;
struct syscall_tp {int id; } ;
struct evsel {struct syscall_tp* priv; int needs_swap; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ __tp_field__init_uint (int *,int ,int ,int ) ;
 struct syscall_tp* malloc (int) ;
 struct tep_format_field* perf_evsel__field (struct evsel*,char*) ;
 int zfree (struct syscall_tp**) ;

__attribute__((used)) static int perf_evsel__init_augmented_syscall_tp(struct evsel *evsel, struct evsel *tp)
{
 struct syscall_tp *sc = evsel->priv = malloc(sizeof(struct syscall_tp));

 if (evsel->priv != ((void*)0)) {
  struct tep_format_field *syscall_id = perf_evsel__field(tp, "id");
  if (syscall_id == ((void*)0))
   syscall_id = perf_evsel__field(tp, "__syscall_nr");
  if (syscall_id == ((void*)0))
   goto out_delete;
  if (__tp_field__init_uint(&sc->id, syscall_id->size, syscall_id->offset, evsel->needs_swap))
   goto out_delete;

  return 0;
 }

 return -ENOMEM;
out_delete:
 zfree(&evsel->priv);
 return -EINVAL;
}
