; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_record_taskinfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_record_taskinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TRACE_RECORD_CMDLINE = common dso_local global i32 0, align 4
@TRACE_RECORD_TGID = common dso_local global i32 0, align 4
@trace_taskinfo_save = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_record_taskinfo(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @tracing_record_taskinfo_skip(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TRACE_RECORD_CMDLINE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i64 @trace_save_cmdline(%struct.task_struct* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ true, %10 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TRACE_RECORD_TGID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i64 @trace_save_tgid(%struct.task_struct* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i1 [ true, %19 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @trace_taskinfo_save, align 4
  %40 = call i32 @__this_cpu_write(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %38, %37, %9
  ret void
}

declare dso_local i64 @tracing_record_taskinfo_skip(i32) #1

declare dso_local i64 @trace_save_cmdline(%struct.task_struct*) #1

declare dso_local i64 @trace_save_tgid(%struct.task_struct*) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
