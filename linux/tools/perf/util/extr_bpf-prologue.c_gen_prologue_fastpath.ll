; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_prologue_fastpath.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_prologue_fastpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { i32 }
%struct.probe_trace_arg = type { i32 }

@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_PROLOGUE_START_ARG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*, %struct.probe_trace_arg*, i32)* @gen_prologue_fastpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_prologue_fastpath(%struct.bpf_insn_pos* %0, %struct.probe_trace_arg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_insn_pos*, align 8
  %6 = alloca %struct.probe_trace_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %5, align 8
  store %struct.probe_trace_arg* %1, %struct.probe_trace_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %16 = load i32, i32* @BPF_REG_1, align 4
  %17 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %17, i64 %19
  %21 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @BPF_PROLOGUE_START_ARG_REG, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @gen_ldx_reg_from_ctx(%struct.bpf_insn_pos* %15, i32 %16, i32 %22, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %38

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %37 = call i32 @check_pos(%struct.bpf_insn_pos* %36)
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @gen_ldx_reg_from_ctx(%struct.bpf_insn_pos*, i32, i32, i64) #1

declare dso_local i32 @check_pos(%struct.bpf_insn_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
