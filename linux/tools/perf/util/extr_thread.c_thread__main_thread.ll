; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__main_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.thread = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @thread__main_thread(%struct.machine* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %6 = load %struct.thread*, %struct.thread** %5, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = call %struct.thread* @thread__get(%struct.thread* %14)
  store %struct.thread* %15, %struct.thread** %3, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.thread* null, %struct.thread** %3, align 8
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.machine*, %struct.machine** %4, align 8
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.thread* @machine__find_thread(%struct.machine* %23, i32 %26, i32 %29)
  store %struct.thread* %30, %struct.thread** %3, align 8
  br label %31

31:                                               ; preds = %22, %21, %13
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  ret %struct.thread* %32
}

declare dso_local %struct.thread* @thread__get(%struct.thread*) #1

declare dso_local %struct.thread* @machine__find_thread(%struct.machine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
