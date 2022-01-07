; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_tp_prog_is_valid_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_tp_prog_is_valid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_insn_access_aux = type { i32 }

@PERF_MAX_TRACE_SIZE = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*)* @tp_prog_is_valid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tp_prog_is_valid_access(i32 %0, i32 %1, i32 %2, %struct.bpf_prog* %3, %struct.bpf_insn_access_aux* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.bpf_insn_access_aux*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bpf_prog* %3, %struct.bpf_prog** %10, align 8
  store %struct.bpf_insn_access_aux* %4, %struct.bpf_insn_access_aux** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PERF_MAX_TRACE_SIZE, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %5
  store i32 0, i32* %6, align 4
  br label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BPF_READ, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %37

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = srem i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @PERF_MAX_TRACE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %30, %24, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
