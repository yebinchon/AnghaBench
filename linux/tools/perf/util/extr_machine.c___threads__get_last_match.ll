; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c___threads__get_last_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c___threads__get_last_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.threads = type { %struct.thread* }
%struct.machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.threads*, %struct.machine*, i32, i32)* @__threads__get_last_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @__threads__get_last_match(%struct.threads* %0, %struct.machine* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.threads*, align 8
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  store %struct.threads* %0, %struct.threads** %6, align 8
  store %struct.machine* %1, %struct.machine** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.threads*, %struct.threads** %6, align 8
  %12 = getelementptr inbounds %struct.threads, %struct.threads* %11, i32 0, i32 0
  %13 = load %struct.thread*, %struct.thread** %12, align 8
  store %struct.thread* %13, %struct.thread** %10, align 8
  %14 = load %struct.thread*, %struct.thread** %10, align 8
  %15 = icmp ne %struct.thread* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** %10, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.machine*, %struct.machine** %7, align 8
  %24 = load %struct.thread*, %struct.thread** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @machine__update_thread_pid(%struct.machine* %23, %struct.thread* %24, i32 %25)
  %27 = load %struct.thread*, %struct.thread** %10, align 8
  %28 = call %struct.thread* @thread__get(%struct.thread* %27)
  store %struct.thread* %28, %struct.thread** %5, align 8
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.threads*, %struct.threads** %6, align 8
  %31 = getelementptr inbounds %struct.threads, %struct.threads* %30, i32 0, i32 0
  store %struct.thread* null, %struct.thread** %31, align 8
  br label %32

32:                                               ; preds = %29, %4
  store %struct.thread* null, %struct.thread** %5, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.thread*, %struct.thread** %5, align 8
  ret %struct.thread* %34
}

declare dso_local i32 @machine__update_thread_pid(%struct.machine*, %struct.thread*, i32) #1

declare dso_local %struct.thread* @thread__get(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
