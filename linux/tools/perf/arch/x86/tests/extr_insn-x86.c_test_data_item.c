
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {int asm_rep; int expected_rel; int data; int expected_branch_str; int expected_op_str; int expected_length; } ;
struct intel_pt_insn {int rel; scalar_t__ branch; scalar_t__ op; } ;
struct insn {int length; } ;


 int MAX_INSN_SIZE ;
 int get_branch (int ) ;
 int get_op (int ) ;
 int insn_complete (struct insn*) ;
 int insn_get_length (struct insn*) ;
 int insn_init (struct insn*,int ,int ,int) ;
 scalar_t__ intel_pt_get_insn (int ,int ,int,struct intel_pt_insn*) ;
 int pr_debug (char*,int ,...) ;

__attribute__((used)) static int test_data_item(struct test_data *dat, int x86_64)
{
 struct intel_pt_insn intel_pt_insn;
 struct insn insn;
 int op, branch;

 insn_init(&insn, dat->data, MAX_INSN_SIZE, x86_64);
 insn_get_length(&insn);

 if (!insn_complete(&insn)) {
  pr_debug("Failed to decode: %s\n", dat->asm_rep);
  return -1;
 }

 if (insn.length != dat->expected_length) {
  pr_debug("Failed to decode length (%d vs expected %d): %s\n",
    insn.length, dat->expected_length, dat->asm_rep);
  return -1;
 }

 op = get_op(dat->expected_op_str);
 branch = get_branch(dat->expected_branch_str);

 if (intel_pt_get_insn(dat->data, MAX_INSN_SIZE, x86_64, &intel_pt_insn)) {
  pr_debug("Intel PT failed to decode: %s\n", dat->asm_rep);
  return -1;
 }

 if ((int)intel_pt_insn.op != op) {
  pr_debug("Failed to decode 'op' value (%d vs expected %d): %s\n",
    intel_pt_insn.op, op, dat->asm_rep);
  return -1;
 }

 if ((int)intel_pt_insn.branch != branch) {
  pr_debug("Failed to decode 'branch' value (%d vs expected %d): %s\n",
    intel_pt_insn.branch, branch, dat->asm_rep);
  return -1;
 }

 if (intel_pt_insn.rel != dat->expected_rel) {
  pr_debug("Failed to decode 'rel' value (%#x vs expected %#x): %s\n",
    intel_pt_insn.rel, dat->expected_rel, dat->asm_rep);
  return -1;
 }

 pr_debug("Decoded ok: %s\n", dat->asm_rep);

 return 0;
}
