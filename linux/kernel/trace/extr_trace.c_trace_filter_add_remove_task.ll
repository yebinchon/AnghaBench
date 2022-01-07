; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_filter_add_remove_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_filter_add_remove_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_pid_list = type { i64, i32 }
%struct.task_struct = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_filter_add_remove_task(%struct.trace_pid_list* %0, %struct.task_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.trace_pid_list*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.trace_pid_list* %0, %struct.trace_pid_list** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.trace_pid_list*, %struct.trace_pid_list** %4, align 8
  %8 = icmp ne %struct.trace_pid_list* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %50

10:                                               ; preds = %3
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.trace_pid_list*, %struct.trace_pid_list** %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @trace_find_filtered_pid(%struct.trace_pid_list* %14, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %50

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.trace_pid_list*, %struct.trace_pid_list** %4, align 8
  %27 = getelementptr inbounds %struct.trace_pid_list, %struct.trace_pid_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %50

31:                                               ; preds = %22
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = icmp ne %struct.task_struct* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.trace_pid_list*, %struct.trace_pid_list** %4, align 8
  %39 = getelementptr inbounds %struct.trace_pid_list, %struct.trace_pid_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_bit(i64 %37, i32 %40)
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.trace_pid_list*, %struct.trace_pid_list** %4, align 8
  %47 = getelementptr inbounds %struct.trace_pid_list, %struct.trace_pid_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clear_bit(i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %9, %20, %30, %42, %34
  ret void
}

declare dso_local i32 @trace_find_filtered_pid(%struct.trace_pid_list*, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
