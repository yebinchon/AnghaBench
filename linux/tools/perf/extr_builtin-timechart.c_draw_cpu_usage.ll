; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { %struct.per_pid* }
%struct.per_pid = type { %struct.per_pid*, i32, %struct.per_pidcomm* }
%struct.per_pidcomm = type { %struct.per_pidcomm*, i32, %struct.cpu_sample* }
%struct.cpu_sample = type { i64, %struct.cpu_sample*, i32, i32, i32, i32 }

@TYPE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @draw_cpu_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cpu_usage(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.per_pidcomm*, align 8
  %5 = alloca %struct.cpu_sample*, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  %6 = load %struct.timechart*, %struct.timechart** %2, align 8
  %7 = getelementptr inbounds %struct.timechart, %struct.timechart* %6, i32 0, i32 0
  %8 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  store %struct.per_pid* %8, %struct.per_pid** %3, align 8
  br label %9

9:                                                ; preds = %60, %1
  %10 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %11 = icmp ne %struct.per_pid* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %9
  %13 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %14 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %13, i32 0, i32 2
  %15 = load %struct.per_pidcomm*, %struct.per_pidcomm** %14, align 8
  store %struct.per_pidcomm* %15, %struct.per_pidcomm** %4, align 8
  br label %16

16:                                               ; preds = %56, %12
  %17 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %18 = icmp ne %struct.per_pidcomm* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %21 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %20, i32 0, i32 2
  %22 = load %struct.cpu_sample*, %struct.cpu_sample** %21, align 8
  store %struct.cpu_sample* %22, %struct.cpu_sample** %5, align 8
  br label %23

23:                                               ; preds = %52, %19
  %24 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %25 = icmp ne %struct.cpu_sample* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TYPE_RUNNING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %34 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %37 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %40 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %43 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %46 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @svg_process(i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %32, %26
  %53 = load %struct.cpu_sample*, %struct.cpu_sample** %5, align 8
  %54 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %53, i32 0, i32 1
  %55 = load %struct.cpu_sample*, %struct.cpu_sample** %54, align 8
  store %struct.cpu_sample* %55, %struct.cpu_sample** %5, align 8
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %58 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %57, i32 0, i32 0
  %59 = load %struct.per_pidcomm*, %struct.per_pidcomm** %58, align 8
  store %struct.per_pidcomm* %59, %struct.per_pidcomm** %4, align 8
  br label %16

60:                                               ; preds = %16
  %61 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %62 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %61, i32 0, i32 0
  %63 = load %struct.per_pid*, %struct.per_pid** %62, align 8
  store %struct.per_pid* %63, %struct.per_pid** %3, align 8
  br label %9

64:                                               ; preds = %9
  ret void
}

declare dso_local i32 @svg_process(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
