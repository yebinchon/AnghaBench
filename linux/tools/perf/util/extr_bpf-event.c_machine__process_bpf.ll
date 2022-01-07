; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_machine__process_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_machine__process_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_sample = type { i32 }

@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unexpected bpf event type of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_bpf(%struct.machine* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  store %struct.machine* %0, %struct.machine** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %8 = load i64, i64* @dump_trace, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %union.perf_event*, %union.perf_event** %6, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @perf_event__fprintf_bpf(%union.perf_event* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %union.perf_event*, %union.perf_event** %6, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %14
  %20 = load %struct.machine*, %struct.machine** %5, align 8
  %21 = load %union.perf_event*, %union.perf_event** %6, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %23 = call i32 @machine__process_bpf_event_load(%struct.machine* %20, %union.perf_event* %21, %struct.perf_sample* %22)
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %14
  br label %31

25:                                               ; preds = %14
  %26 = load %union.perf_event*, %union.perf_event** %6, align 8
  %27 = bitcast %union.perf_event* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %24
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @perf_event__fprintf_bpf(%union.perf_event*, i32) #1

declare dso_local i32 @machine__process_bpf_event_load(%struct.machine*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
