; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__run_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__run_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i64 }
%struct.cs_etm_traceid_queue = type { i32 }

@CS_ETM_PER_THREAD_TRACEID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*)* @cs_etm__run_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__run_decoder(%struct.cs_etm_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_etm_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %7 = load i32, i32* @CS_ETM_PER_THREAD_TRACEID, align 4
  %8 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %6, i32 %7)
  store %struct.cs_etm_traceid_queue* %8, %struct.cs_etm_traceid_queue** %5, align 8
  %9 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %10 = icmp ne %struct.cs_etm_traceid_queue* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %46
  %16 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %17 = call i32 @cs_etm__get_data_block(%struct.cs_etm_queue* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %25 = call i32 @cs_etm__decode_data_block(%struct.cs_etm_queue* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %32 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %33 = call i32 @cs_etm__process_traceid_queue(%struct.cs_etm_queue* %31, %struct.cs_etm_traceid_queue* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %36 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %44 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %45 = call i32 @cs_etm__end_block(%struct.cs_etm_queue* %43, %struct.cs_etm_traceid_queue* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %15

47:                                               ; preds = %28, %20, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i32) #1

declare dso_local i32 @cs_etm__get_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__decode_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__process_traceid_queue(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

declare dso_local i32 @cs_etm__end_block(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
