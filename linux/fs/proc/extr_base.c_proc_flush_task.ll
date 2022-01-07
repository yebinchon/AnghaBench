; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_flush_task.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_flush_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid = type { i32, %struct.upid* }
%struct.upid = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_flush_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca %struct.upid*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call %struct.pid* @task_pid(%struct.task_struct* %7)
  store %struct.pid* %8, %struct.pid** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = call %struct.pid* @task_tgid(%struct.task_struct* %9)
  store %struct.pid* %10, %struct.pid** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.pid*, %struct.pid** %4, align 8
  %14 = getelementptr inbounds %struct.pid, %struct.pid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.pid*, %struct.pid** %4, align 8
  %19 = getelementptr inbounds %struct.pid, %struct.pid* %18, i32 0, i32 1
  %20 = load %struct.upid*, %struct.upid** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.upid, %struct.upid* %20, i64 %22
  store %struct.upid* %23, %struct.upid** %6, align 8
  %24 = load %struct.upid*, %struct.upid** %6, align 8
  %25 = getelementptr inbounds %struct.upid, %struct.upid* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.upid*, %struct.upid** %6, align 8
  %30 = getelementptr inbounds %struct.upid, %struct.upid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pid*, %struct.pid** %5, align 8
  %33 = getelementptr inbounds %struct.pid, %struct.pid* %32, i32 0, i32 1
  %34 = load %struct.upid*, %struct.upid** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.upid, %struct.upid* %34, i64 %36
  %38 = getelementptr inbounds %struct.upid, %struct.upid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @proc_flush_task_mnt(i32 %28, i32 %31, i32 %39)
  br label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  ret void
}

declare dso_local %struct.pid* @task_pid(%struct.task_struct*) #1

declare dso_local %struct.pid* @task_tgid(%struct.task_struct*) #1

declare dso_local i32 @proc_flush_task_mnt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
