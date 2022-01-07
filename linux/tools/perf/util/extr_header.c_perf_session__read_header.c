
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_18__ {int pevent; } ;
struct TYPE_12__ {int * env; } ;
struct TYPE_13__ {TYPE_1__ host; } ;
struct perf_header {scalar_t__ needs_swap; int env; } ;
struct perf_session {TYPE_8__* evlist; TYPE_7__ tevent; TYPE_2__ machines; struct perf_header header; struct perf_data* data; } ;
struct TYPE_16__ {int size; int offset; } ;
struct TYPE_14__ {scalar_t__ size; } ;
struct perf_file_header {int attr_size; TYPE_5__ attrs; TYPE_3__ data; } ;
struct TYPE_17__ {int size; int offset; } ;
struct perf_file_attr {TYPE_6__ ids; int attr; } ;
struct TYPE_15__ {int path; } ;
struct perf_data {TYPE_4__ file; } ;
struct evsel {int core; scalar_t__ needs_swap; } ;
typedef int off_t ;
typedef int f_id ;
struct TYPE_19__ {int core; int * env; } ;


 int EINVAL ;
 int ENOMEM ;
 int SEEK_CUR ;
 int SEEK_SET ;
 void* bswap_64 (int) ;
 int errno ;
 int evlist__add (TYPE_8__*,struct evsel*) ;
 int evlist__delete (TYPE_8__*) ;
 TYPE_8__* evlist__new () ;
 struct evsel* evsel__new (int *) ;
 int lseek (int,int,int ) ;
 int perf_data__fd (struct perf_data*) ;
 scalar_t__ perf_data__is_pipe (struct perf_data*) ;
 int perf_event__attr_swap (int *) ;
 int perf_evlist__id_add (int *,int *,int ,int,int ) ;
 scalar_t__ perf_evlist__prepare_tracepoint_events (TYPE_8__*,int ) ;
 scalar_t__ perf_evsel__alloc_id (int *,int,int) ;
 scalar_t__ perf_file_header__read (struct perf_file_header*,struct perf_header*,int) ;
 int perf_file_section__process ;
 scalar_t__ perf_header__getbuffer64 (struct perf_header*,int,int *,int) ;
 int perf_header__process_sections (struct perf_header*,int,TYPE_7__*,int ) ;
 int perf_header__read_pipe (struct perf_session*) ;
 int pr_err (char*,int ) ;
 int pr_warning (char*,int ) ;
 scalar_t__ read_attr (int,struct perf_header*,struct perf_file_attr*) ;

int perf_session__read_header(struct perf_session *session)
{
 struct perf_data *data = session->data;
 struct perf_header *header = &session->header;
 struct perf_file_header f_header;
 struct perf_file_attr f_attr;
 u64 f_id;
 int nr_attrs, nr_ids, i, j;
 int fd = perf_data__fd(data);

 session->evlist = evlist__new();
 if (session->evlist == ((void*)0))
  return -ENOMEM;

 session->evlist->env = &header->env;
 session->machines.host.env = &header->env;
 if (perf_data__is_pipe(data))
  return perf_header__read_pipe(session);

 if (perf_file_header__read(&f_header, header, fd) < 0)
  return -EINVAL;







 if (f_header.data.size == 0) {
  pr_warning("WARNING: The %s file's data size field is 0 which is unexpected.\n"
      "Was the 'perf record' command properly terminated?\n",
      data->file.path);
 }

 if (f_header.attr_size == 0) {
  pr_err("ERROR: The %s file's attr size field is 0 which is unexpected.\n"
         "Was the 'perf record' command properly terminated?\n",
         data->file.path);
  return -EINVAL;
 }

 nr_attrs = f_header.attrs.size / f_header.attr_size;
 lseek(fd, f_header.attrs.offset, SEEK_SET);

 for (i = 0; i < nr_attrs; i++) {
  struct evsel *evsel;
  off_t tmp;

  if (read_attr(fd, header, &f_attr) < 0)
   goto out_errno;

  if (header->needs_swap) {
   f_attr.ids.size = bswap_64(f_attr.ids.size);
   f_attr.ids.offset = bswap_64(f_attr.ids.offset);
   perf_event__attr_swap(&f_attr.attr);
  }

  tmp = lseek(fd, 0, SEEK_CUR);
  evsel = evsel__new(&f_attr.attr);

  if (evsel == ((void*)0))
   goto out_delete_evlist;

  evsel->needs_swap = header->needs_swap;




  evlist__add(session->evlist, evsel);

  nr_ids = f_attr.ids.size / sizeof(u64);





  if (perf_evsel__alloc_id(&evsel->core, 1, nr_ids))
   goto out_delete_evlist;

  lseek(fd, f_attr.ids.offset, SEEK_SET);

  for (j = 0; j < nr_ids; j++) {
   if (perf_header__getbuffer64(header, fd, &f_id, sizeof(f_id)))
    goto out_errno;

   perf_evlist__id_add(&session->evlist->core, &evsel->core, 0, j, f_id);
  }

  lseek(fd, tmp, SEEK_SET);
 }

 perf_header__process_sections(header, fd, &session->tevent,
          perf_file_section__process);

 if (perf_evlist__prepare_tracepoint_events(session->evlist,
         session->tevent.pevent))
  goto out_delete_evlist;

 return 0;
out_errno:
 return -errno;

out_delete_evlist:
 evlist__delete(session->evlist);
 session->evlist = ((void*)0);
 return -ENOMEM;
}
