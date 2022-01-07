; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_tasks_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_tasks_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.machine = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task* (%struct.task*, %struct.machine*)* @tasks_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task* @tasks_list(%struct.task* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.task*, align 8
  %4 = alloca %struct.task*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.task*, align 8
  store %struct.task* %0, %struct.task** %4, align 8
  store %struct.machine* %1, %struct.machine** %5, align 8
  %9 = load %struct.task*, %struct.task** %4, align 8
  %10 = getelementptr inbounds %struct.task, %struct.task* %9, i32 0, i32 2
  %11 = load %struct.thread*, %struct.thread** %10, align 8
  store %struct.thread* %11, %struct.thread** %7, align 8
  %12 = load %struct.task*, %struct.task** %4, align 8
  %13 = getelementptr inbounds %struct.task, %struct.task* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.task* null, %struct.task** %3, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.task*, %struct.task** %4, align 8
  store %struct.task* %23, %struct.task** %3, align 8
  br label %47

24:                                               ; preds = %17
  %25 = load %struct.machine*, %struct.machine** %5, align 8
  %26 = load %struct.thread*, %struct.thread** %7, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.thread* @machine__find_thread(%struct.machine* %25, i32 -1, i32 %28)
  store %struct.thread* %29, %struct.thread** %6, align 8
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = icmp ne %struct.thread* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.task* @ERR_PTR(i32 %34)
  store %struct.task* %35, %struct.task** %3, align 8
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.thread*, %struct.thread** %6, align 8
  %38 = call %struct.task* @thread__priv(%struct.thread* %37)
  store %struct.task* %38, %struct.task** %8, align 8
  %39 = load %struct.task*, %struct.task** %4, align 8
  %40 = getelementptr inbounds %struct.task, %struct.task* %39, i32 0, i32 1
  %41 = load %struct.task*, %struct.task** %8, align 8
  %42 = getelementptr inbounds %struct.task, %struct.task* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.task*, %struct.task** %8, align 8
  %45 = load %struct.machine*, %struct.machine** %5, align 8
  %46 = call %struct.task* @tasks_list(%struct.task* %44, %struct.machine* %45)
  store %struct.task* %46, %struct.task** %3, align 8
  br label %47

47:                                               ; preds = %36, %32, %22, %16
  %48 = load %struct.task*, %struct.task** %3, align 8
  ret %struct.task* %48
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.thread* @machine__find_thread(%struct.machine*, i32, i32) #1

declare dso_local %struct.task* @ERR_PTR(i32) #1

declare dso_local %struct.task* @thread__priv(%struct.thread*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
