
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int private_data; } ;
struct bpf_event_entry {struct file* map_file; struct file* perf_file; int event; } ;


 int GFP_ATOMIC ;
 struct bpf_event_entry* kzalloc (int,int ) ;

__attribute__((used)) static struct bpf_event_entry *bpf_event_entry_gen(struct file *perf_file,
         struct file *map_file)
{
 struct bpf_event_entry *ee;

 ee = kzalloc(sizeof(*ee), GFP_ATOMIC);
 if (ee) {
  ee->event = perf_file->private_data;
  ee->perf_file = perf_file;
  ee->map_file = map_file;
 }

 return ee;
}
