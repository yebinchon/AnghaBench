; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__cpu_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__cpu_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.machine* }
%struct.machine = type { i32 }

@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_HYPERVISOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, i64)* @cs_etm__cpu_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__cpu_mode(%struct.cs_etm_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.machine*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.machine*, %struct.machine** %10, align 8
  store %struct.machine* %11, %struct.machine** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %14 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %12, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.machine*, %struct.machine** %6, align 8
  %21 = call i64 @machine__is_host(%struct.machine* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %19
  %26 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.machine*, %struct.machine** %6, align 8
  %29 = call i64 @machine__is_host(%struct.machine* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load i64, i64* @perf_guest, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @PERF_RECORD_MISC_GUEST_USER, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PERF_RECORD_MISC_HYPERVISOR, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %31, %25, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
