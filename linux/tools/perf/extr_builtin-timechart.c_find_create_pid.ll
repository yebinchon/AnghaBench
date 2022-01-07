; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_find_create_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_find_create_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, %struct.per_pid* }
%struct.timechart = type { %struct.per_pid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.per_pid* (%struct.timechart*, i32)* @find_create_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.per_pid* @find_create_pid(%struct.timechart* %0, i32 %1) #0 {
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.timechart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.per_pid*, align 8
  store %struct.timechart* %0, %struct.timechart** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.timechart*, %struct.timechart** %4, align 8
  %8 = getelementptr inbounds %struct.timechart, %struct.timechart* %7, i32 0, i32 0
  %9 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  store %struct.per_pid* %9, %struct.per_pid** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %12 = icmp ne %struct.per_pid* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %15 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  store %struct.per_pid* %20, %struct.per_pid** %3, align 8
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %23 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %22, i32 0, i32 1
  %24 = load %struct.per_pid*, %struct.per_pid** %23, align 8
  store %struct.per_pid* %24, %struct.per_pid** %6, align 8
  br label %10

25:                                               ; preds = %10
  %26 = call %struct.per_pid* @zalloc(i32 16)
  store %struct.per_pid* %26, %struct.per_pid** %6, align 8
  %27 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %28 = icmp ne %struct.per_pid* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %33 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.timechart*, %struct.timechart** %4, align 8
  %35 = getelementptr inbounds %struct.timechart, %struct.timechart* %34, i32 0, i32 0
  %36 = load %struct.per_pid*, %struct.per_pid** %35, align 8
  %37 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %38 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %37, i32 0, i32 1
  store %struct.per_pid* %36, %struct.per_pid** %38, align 8
  %39 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %40 = load %struct.timechart*, %struct.timechart** %4, align 8
  %41 = getelementptr inbounds %struct.timechart, %struct.timechart* %40, i32 0, i32 0
  store %struct.per_pid* %39, %struct.per_pid** %41, align 8
  %42 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  store %struct.per_pid* %42, %struct.per_pid** %3, align 8
  br label %43

43:                                               ; preds = %25, %19
  %44 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  ret %struct.per_pid* %44
}

declare dso_local %struct.per_pid* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
