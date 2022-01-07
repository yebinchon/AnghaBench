
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int bpf__strerror_setup_output_event (struct evlist*,int,char*,size_t) ;

__attribute__((used)) static inline int bpf__strerror_setup_stdout(struct evlist *evlist, int err, char *buf, size_t size)
{
 return bpf__strerror_setup_output_event(evlist, err, buf, size);
}
