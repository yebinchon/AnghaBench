; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_free_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_free_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_arg = type { %struct.fetch_insn*, %struct.fetch_insn*, %struct.fetch_insn*, %struct.fetch_insn* }
%struct.fetch_insn = type { i64, %struct.fetch_insn* }

@FETCH_OP_END = common dso_local global i64 0, align 8
@FETCH_NOP_SYMBOL = common dso_local global i64 0, align 8
@FETCH_OP_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traceprobe_free_probe_arg(%struct.probe_arg* %0) #0 {
  %2 = alloca %struct.probe_arg*, align 8
  %3 = alloca %struct.fetch_insn*, align 8
  store %struct.probe_arg* %0, %struct.probe_arg** %2, align 8
  %4 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %5 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %4, i32 0, i32 3
  %6 = load %struct.fetch_insn*, %struct.fetch_insn** %5, align 8
  store %struct.fetch_insn* %6, %struct.fetch_insn** %3, align 8
  br label %7

7:                                                ; preds = %35, %1
  %8 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %9 = icmp ne %struct.fetch_insn* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %12 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FETCH_OP_END, align 8
  %15 = icmp ne i64 %13, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %38

18:                                               ; preds = %16
  %19 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %20 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FETCH_NOP_SYMBOL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %26 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FETCH_OP_DATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %18
  %31 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %32 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %31, i32 0, i32 1
  %33 = load %struct.fetch_insn*, %struct.fetch_insn** %32, align 8
  %34 = call i32 @kfree(%struct.fetch_insn* %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.fetch_insn*, %struct.fetch_insn** %3, align 8
  %37 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %36, i32 1
  store %struct.fetch_insn* %37, %struct.fetch_insn** %3, align 8
  br label %7

38:                                               ; preds = %16
  %39 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %40 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %39, i32 0, i32 3
  %41 = load %struct.fetch_insn*, %struct.fetch_insn** %40, align 8
  %42 = call i32 @kfree(%struct.fetch_insn* %41)
  %43 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %44 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %43, i32 0, i32 2
  %45 = load %struct.fetch_insn*, %struct.fetch_insn** %44, align 8
  %46 = call i32 @kfree(%struct.fetch_insn* %45)
  %47 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %48 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %47, i32 0, i32 1
  %49 = load %struct.fetch_insn*, %struct.fetch_insn** %48, align 8
  %50 = call i32 @kfree(%struct.fetch_insn* %49)
  %51 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %52 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %51, i32 0, i32 0
  %53 = load %struct.fetch_insn*, %struct.fetch_insn** %52, align 8
  %54 = call i32 @kfree(%struct.fetch_insn* %53)
  ret void
}

declare dso_local i32 @kfree(%struct.fetch_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
