; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_oom_kill.c___task_will_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_oom_kill.c___task_will_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.signal_struct* }
%struct.signal_struct = type { i32 }

@SIGNAL_GROUP_COREDUMP = common dso_local global i32 0, align 4
@SIGNAL_GROUP_EXIT = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @__task_will_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__task_will_free_mem(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.signal_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 1
  %7 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  store %struct.signal_struct* %7, %struct.signal_struct** %4, align 8
  %8 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %9 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SIGNAL_GROUP_COREDUMP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %17 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIGNAL_GROUP_EXIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %36

23:                                               ; preds = %15
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = call i64 @thread_group_empty(%struct.task_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PF_EXITING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %27, %23
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %22, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
