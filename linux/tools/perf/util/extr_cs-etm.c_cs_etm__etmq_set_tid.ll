; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_set_tid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_set_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.cs_etm_auxtrace* }
%struct.cs_etm_auxtrace = type { i32 }
%struct.cs_etm_traceid_queue = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_etm__etmq_set_tid(%struct.cs_etm_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cs_etm_auxtrace*, align 8
  %11 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %15 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %14, i32 0, i32 0
  %16 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %15, align 8
  store %struct.cs_etm_auxtrace* %16, %struct.cs_etm_auxtrace** %10, align 8
  %17 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %17, i32 %18)
  store %struct.cs_etm_traceid_queue* %19, %struct.cs_etm_traceid_queue** %11, align 8
  %20 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %11, align 8
  %21 = icmp ne %struct.cs_etm_traceid_queue* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @cs_etm__get_cpu(i32 %25, i32* %8)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %10, align 8
  %32 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @machine__set_current_tid(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %11, align 8
  %45 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %11, align 8
  %47 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @thread__zput(i32 %48)
  %50 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %10, align 8
  %51 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %11, align 8
  %52 = call i32 @cs_etm__set_pid_tid_cpu(%struct.cs_etm_auxtrace* %50, %struct.cs_etm_traceid_queue* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %42, %40, %28, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i32) #1

declare dso_local i64 @cs_etm__get_cpu(i32, i32*) #1

declare dso_local i32 @machine__set_current_tid(i32, i32, i32, i32) #1

declare dso_local i32 @thread__zput(i32) #1

declare dso_local i32 @cs_etm__set_pid_tid_cpu(%struct.cs_etm_auxtrace*, %struct.cs_etm_traceid_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
