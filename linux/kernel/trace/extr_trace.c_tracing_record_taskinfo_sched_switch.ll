; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_record_taskinfo_sched_switch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_record_taskinfo_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TRACE_RECORD_CMDLINE = common dso_local global i32 0, align 4
@TRACE_RECORD_TGID = common dso_local global i32 0, align 4
@trace_taskinfo_save = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_record_taskinfo_sched_switch(%struct.task_struct* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @tracing_record_taskinfo_skip(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %69

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TRACE_RECORD_CMDLINE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call i64 @trace_save_cmdline(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ true, %12 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TRACE_RECORD_CMDLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = call i64 @trace_save_cmdline(%struct.task_struct* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ true, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TRACE_RECORD_TGID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = call i64 @trace_save_tgid(%struct.task_struct* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi i1 [ true, %32 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TRACE_RECORD_TGID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %56 = call i64 @trace_save_tgid(%struct.task_struct* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i1 [ true, %45 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @trace_taskinfo_save, align 4
  %68 = call i32 @__this_cpu_write(i32 %67, i32 0)
  br label %69

69:                                               ; preds = %66, %65, %11
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
