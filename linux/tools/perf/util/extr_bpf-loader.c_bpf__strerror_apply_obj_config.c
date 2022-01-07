
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM ;
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH ;
 int BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE ;
 int bpf__strerror_end (char*,size_t) ;
 int bpf__strerror_entry (int ,char*,...) ;
 int bpf__strerror_head (int,char*,size_t) ;
 int emsg ;

int bpf__strerror_apply_obj_config(int err, char *buf, size_t size)
{
 bpf__strerror_head(err, buf, size);
 bpf__strerror_entry(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTDIM,
       "Cannot set event to BPF map in multi-thread tracing");
 bpf__strerror_entry(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTINH,
       "%s (Hint: use -i to turn off inherit)", emsg);
 bpf__strerror_entry(BPF_LOADER_ERRNO__OBJCONF_MAP_EVTTYPE,
       "Can only put raw, hardware and BPF output event into a BPF map");
 bpf__strerror_end(buf, size);
 return 0;
}
