
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx_insn ;
typedef int * rtx ;
struct TYPE_2__ {scalar_t__ calls_alloca; } ;


 scalar_t__ CALL ;
 int CALL_P (int *) ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ MEM ;
 int * NEXT_INSN (int *) ;
 scalar_t__ NOTE ;
 scalar_t__ NOTE_INSN_CALL_ARG_LOCATION ;
 scalar_t__ NOTE_KIND (int *) ;
 scalar_t__ PARALLEL ;
 int * PATTERN (int *) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_DECL (int *) ;
 int * XEXP (int *,int ) ;
 int * XVECEXP (int *,int ,int ) ;
 TYPE_1__* cfun ;
 int delete_insn_and_edges (int *) ;
 int * get_insns () ;
 scalar_t__ large_stack_frame () ;
 scalar_t__ track_function_decl ;

__attribute__((used)) static unsigned int stackleak_cleanup_execute(void)
{
 rtx_insn *insn, *next;

 if (cfun->calls_alloca)
  return 0;

 if (large_stack_frame())
  return 0;
 for (insn = get_insns(); insn; insn = next) {
  rtx body;

  next = NEXT_INSN(insn);


  if (!CALL_P(insn))
   continue;






  body = PATTERN(insn);

  if (GET_CODE(body) == PARALLEL)
   body = XVECEXP(body, 0, 0);

  if (GET_CODE(body) != CALL)
   continue;






  body = XEXP(body, 0);
  if (GET_CODE(body) != MEM)
   continue;

  body = XEXP(body, 0);
  if (GET_CODE(body) != SYMBOL_REF)
   continue;

  if (SYMBOL_REF_DECL(body) != track_function_decl)
   continue;


  delete_insn_and_edges(insn);
 }

 return 0;
}
