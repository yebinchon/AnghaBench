; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_timeless_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_timeless_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { %struct.auxtrace_queues }
%struct.auxtrace_queues = type { i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.cs_etm_queue* }
%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_traceid_queue = type { i32 }

@CS_ETM_PER_THREAD_TRACEID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*, i32)* @cs_etm__process_timeless_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__process_timeless_queues(%struct.cs_etm_auxtrace* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_etm_auxtrace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.auxtrace_queues*, align 8
  %7 = alloca %struct.auxtrace_queue*, align 8
  %8 = alloca %struct.cs_etm_queue*, align 8
  %9 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %11 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %10, i32 0, i32 0
  store %struct.auxtrace_queues* %11, %struct.auxtrace_queues** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %55, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %6, align 8
  %15 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %20 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %20, i32 0, i32 1
  %22 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %22, i64 %24
  store %struct.auxtrace_queue* %25, %struct.auxtrace_queue** %7, align 8
  %26 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %27 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %26, i32 0, i32 0
  %28 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %27, align 8
  store %struct.cs_etm_queue* %28, %struct.cs_etm_queue** %8, align 8
  %29 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %8, align 8
  %30 = icmp ne %struct.cs_etm_queue* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %55

32:                                               ; preds = %18
  %33 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %8, align 8
  %34 = load i32, i32* @CS_ETM_PER_THREAD_TRACEID, align 4
  %35 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %33, i32 %34)
  store %struct.cs_etm_traceid_queue* %35, %struct.cs_etm_traceid_queue** %9, align 8
  %36 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %37 = icmp ne %struct.cs_etm_traceid_queue* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %55

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %44 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42, %39
  %49 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %50 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %9, align 8
  %51 = call i32 @cs_etm__set_pid_tid_cpu(%struct.cs_etm_auxtrace* %49, %struct.cs_etm_traceid_queue* %50)
  %52 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %8, align 8
  %53 = call i32 @cs_etm__run_decoder(%struct.cs_etm_queue* %52)
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %38, %31
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %12

58:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i32) #1

declare dso_local i32 @cs_etm__set_pid_tid_cpu(%struct.cs_etm_auxtrace*, %struct.cs_etm_traceid_queue*) #1

declare dso_local i32 @cs_etm__run_decoder(%struct.cs_etm_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
