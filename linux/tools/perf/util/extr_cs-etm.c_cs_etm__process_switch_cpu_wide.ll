; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_switch_cpu_wide.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_switch_cpu_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { i32, i64 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PERF_RECORD_MISC_SWITCH_OUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*, %union.perf_event*)* @cs_etm__process_switch_cpu_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__process_switch_cpu_wide(%struct.cs_etm_auxtrace* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_auxtrace*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %8 = load %union.perf_event*, %union.perf_event** %5, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PERF_RECORD_MISC_SWITCH_OUT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %15 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %44

23:                                               ; preds = %19
  %24 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %25 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %union.perf_event*, %union.perf_event** %5, align 8
  %28 = bitcast %union.perf_event* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %union.perf_event*, %union.perf_event** %5, align 8
  %32 = bitcast %union.perf_event* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.thread* @machine__findnew_thread(i32 %26, i32 %30, i32 %34)
  store %struct.thread* %35, %struct.thread** %6, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = icmp ne %struct.thread* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %23
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = call i32 @thread__put(%struct.thread* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38, %22, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.thread* @machine__findnew_thread(i32, i32, i32) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
