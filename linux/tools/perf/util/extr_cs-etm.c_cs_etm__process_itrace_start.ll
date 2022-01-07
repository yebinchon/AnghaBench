; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_itrace_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_itrace_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { i32, i64 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.thread = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*, %union.perf_event*)* @cs_etm__process_itrace_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__process_itrace_start(%struct.cs_etm_auxtrace* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_auxtrace*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %7 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %14 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %union.perf_event*, %union.perf_event** %5, align 8
  %17 = bitcast %union.perf_event* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %union.perf_event*, %union.perf_event** %5, align 8
  %21 = bitcast %union.perf_event* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.thread* @machine__findnew_thread(i32 %15, i32 %19, i32 %23)
  store %struct.thread* %24, %struct.thread** %6, align 8
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = icmp ne %struct.thread* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %12
  %31 = load %struct.thread*, %struct.thread** %6, align 8
  %32 = call i32 @thread__put(%struct.thread* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %27, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.thread* @machine__findnew_thread(i32, i32, i32) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
