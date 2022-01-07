; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_begin_io_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_begin_io_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.per_pid = type { %struct.per_pidcomm*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i64, %struct.io_sample*, %struct.per_pidcomm* }
%struct.io_sample = type { i32, i32, %struct.io_sample*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Skip invalid start event: previous event already started!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i32, i32, i64, i32)* @pid_begin_io_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_begin_io_sample(%struct.timechart* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.timechart*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.per_pid*, align 8
  %13 = alloca %struct.per_pidcomm*, align 8
  %14 = alloca %struct.io_sample*, align 8
  %15 = alloca %struct.io_sample*, align 8
  store %struct.timechart* %0, %struct.timechart** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.timechart*, %struct.timechart** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.per_pid* @find_create_pid(%struct.timechart* %16, i32 %17)
  store %struct.per_pid* %18, %struct.per_pid** %12, align 8
  %19 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %20 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %19, i32 0, i32 1
  %21 = load %struct.per_pidcomm*, %struct.per_pidcomm** %20, align 8
  store %struct.per_pidcomm* %21, %struct.per_pidcomm** %13, align 8
  %22 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %23 = icmp ne %struct.per_pidcomm* %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %5
  %25 = call i8* @zalloc(i32 24)
  %26 = bitcast i8* %25 to %struct.per_pidcomm*
  store %struct.per_pidcomm* %26, %struct.per_pidcomm** %13, align 8
  %27 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %28 = icmp ne %struct.per_pidcomm* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %110

32:                                               ; preds = %24
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %34 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %35 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %34, i32 0, i32 1
  store %struct.per_pidcomm* %33, %struct.per_pidcomm** %35, align 8
  %36 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %37 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %36, i32 0, i32 0
  %38 = load %struct.per_pidcomm*, %struct.per_pidcomm** %37, align 8
  %39 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %40 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %39, i32 0, i32 2
  store %struct.per_pidcomm* %38, %struct.per_pidcomm** %40, align 8
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %42 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %43 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %42, i32 0, i32 0
  store %struct.per_pidcomm* %41, %struct.per_pidcomm** %43, align 8
  br label %44

44:                                               ; preds = %32, %5
  %45 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %46 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %45, i32 0, i32 1
  %47 = load %struct.io_sample*, %struct.io_sample** %46, align 8
  store %struct.io_sample* %47, %struct.io_sample** %15, align 8
  %48 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %49 = icmp ne %struct.io_sample* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %52 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %57 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = call i32 @pr_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %63 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %62, i32 0, i32 2
  %64 = load %struct.io_sample*, %struct.io_sample** %63, align 8
  %65 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %66 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %65, i32 0, i32 1
  store %struct.io_sample* %64, %struct.io_sample** %66, align 8
  %67 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %68 = call i32 @free(%struct.io_sample* %67)
  store i32 0, i32* %6, align 4
  br label %110

69:                                               ; preds = %55, %50, %44
  %70 = call i8* @zalloc(i32 32)
  %71 = bitcast i8* %70 to %struct.io_sample*
  store %struct.io_sample* %71, %struct.io_sample** %14, align 8
  %72 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %73 = icmp ne %struct.io_sample* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %110

77:                                               ; preds = %69
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %80 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %83 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %86 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %88 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %87, i32 0, i32 1
  %89 = load %struct.io_sample*, %struct.io_sample** %88, align 8
  %90 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %91 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %90, i32 0, i32 2
  store %struct.io_sample* %89, %struct.io_sample** %91, align 8
  %92 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %93 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %94 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %93, i32 0, i32 1
  store %struct.io_sample* %92, %struct.io_sample** %94, align 8
  %95 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %96 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %77
  %100 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %101 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %77
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %108 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %99
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %74, %60, %29
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @free(%struct.io_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
