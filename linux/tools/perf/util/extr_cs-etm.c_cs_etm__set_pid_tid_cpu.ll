; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_pid_tid_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_pid_tid_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { i32 }
%struct.cs_etm_traceid_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_auxtrace*, %struct.cs_etm_traceid_queue*)* @cs_etm__set_pid_tid_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__set_pid_tid_cpu(%struct.cs_etm_auxtrace* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca %struct.cs_etm_auxtrace*, align 8
  %4 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %3, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %4, align 8
  %5 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %6 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %11 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %16 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %19 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_2__* @machine__find_thread(i32 %17, i32 -1, i32 %20)
  %22 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %22, i32 0, i32 1
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  br label %24

24:                                               ; preds = %14, %9, %2
  %25 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %26 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %31 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %36 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.TYPE_2__* @machine__find_thread(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
