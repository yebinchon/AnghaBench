; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_passes_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_passes_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_filter = type { i64, %struct.process_filter*, i32 }
%struct.per_pid = type { i64 }
%struct.per_pidcomm = type { i32 }

@process_filter = common dso_local global %struct.process_filter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_pid*, %struct.per_pidcomm*)* @passes_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passes_filter(%struct.per_pid* %0, %struct.per_pidcomm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.per_pid*, align 8
  %5 = alloca %struct.per_pidcomm*, align 8
  %6 = alloca %struct.process_filter*, align 8
  store %struct.per_pid* %0, %struct.per_pid** %4, align 8
  store %struct.per_pidcomm* %1, %struct.per_pidcomm** %5, align 8
  %7 = load %struct.process_filter*, %struct.process_filter** @process_filter, align 8
  %8 = icmp ne %struct.process_filter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.process_filter*, %struct.process_filter** @process_filter, align 8
  store %struct.process_filter* %11, %struct.process_filter** %6, align 8
  br label %12

12:                                               ; preds = %39, %10
  %13 = load %struct.process_filter*, %struct.process_filter** %6, align 8
  %14 = icmp ne %struct.process_filter* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.process_filter*, %struct.process_filter** %6, align 8
  %17 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.process_filter*, %struct.process_filter** %6, align 8
  %25 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %44

29:                                               ; preds = %20, %15
  %30 = load %struct.process_filter*, %struct.process_filter** %6, align 8
  %31 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %34 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %32, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.process_filter*, %struct.process_filter** %6, align 8
  %41 = getelementptr inbounds %struct.process_filter, %struct.process_filter* %40, i32 0, i32 1
  %42 = load %struct.process_filter*, %struct.process_filter** %41, align 8
  store %struct.process_filter* %42, %struct.process_filter** %6, align 8
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %28, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
