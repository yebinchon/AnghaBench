; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_ldx_reg_from_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_ldx_reg_from_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"bpf: prologue: failed to get register %s\0A\00", align 1
@BPF_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*, i32, i8*, i32)* @gen_ldx_reg_from_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_ldx_reg_from_ctx(%struct.bpf_insn_pos* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn_pos*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @regs_query_register_offset(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %4
  %20 = load i32, i32* @BPF_DW, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @BPF_LDX_MEM(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %6, align 8
  %26 = call i32 @ins(i32 %24, %struct.bpf_insn_pos* %25)
  %27 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %6, align 8
  %28 = call i32 @check_pos(%struct.bpf_insn_pos* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %15
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @regs_query_register_offset(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @ins(i32, %struct.bpf_insn_pos*) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @check_pos(%struct.bpf_insn_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
