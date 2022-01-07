; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__init_map_groups.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__init_map_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i64 }
%struct.machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread__init_map_groups(%struct.thread* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %2
  %19 = load %struct.machine*, %struct.machine** %4, align 8
  %20 = call i64 @map_groups__new(%struct.machine* %19)
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  br label %40

23:                                               ; preds = %15
  %24 = load %struct.machine*, %struct.machine** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.thread* @__machine__findnew_thread(%struct.machine* %24, i32 %25, i32 %26)
  store %struct.thread* %27, %struct.thread** %6, align 8
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = icmp ne %struct.thread* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @map_groups__get(i64 %33)
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.thread*, %struct.thread** %6, align 8
  %38 = call i32 @thread__put(%struct.thread* %37)
  br label %39

39:                                               ; preds = %30, %23
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 -1
  ret i32 %46
}

declare dso_local i64 @map_groups__new(%struct.machine*) #1

declare dso_local %struct.thread* @__machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i64 @map_groups__get(i64) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
