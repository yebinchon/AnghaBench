
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_term {int dummy; } ;
struct bpf_map_op {int dummy; } ;
struct bpf_map {int dummy; } ;


 struct bpf_map_op* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct bpf_map_op*) ;
 int bpf_map__add_op (struct bpf_map*,struct bpf_map_op*) ;
 int bpf_map_op__delete (struct bpf_map_op*) ;
 struct bpf_map_op* bpf_map_op__new (struct parse_events_term*) ;

__attribute__((used)) static struct bpf_map_op *
bpf_map__add_newop(struct bpf_map *map, struct parse_events_term *term)
{
 struct bpf_map_op *op;
 int err;

 op = bpf_map_op__new(term);
 if (IS_ERR(op))
  return op;

 err = bpf_map__add_op(map, op);
 if (err) {
  bpf_map_op__delete(op);
  return ERR_PTR(err);
 }
 return op;
}
