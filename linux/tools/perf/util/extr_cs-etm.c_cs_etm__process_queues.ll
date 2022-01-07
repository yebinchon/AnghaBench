; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__process_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.cs_etm_queue* }
%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_traceid_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*)* @cs_etm__process_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__process_queues(%struct.cs_etm_auxtrace* %0) #0 {
  %2 = alloca %struct.cs_etm_auxtrace*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_queue*, align 8
  %9 = alloca %struct.cs_etm_queue*, align 8
  %10 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %1, %68, %83
  %12 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %2, align 8
  %13 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %92

18:                                               ; preds = %11
  %19 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %2, align 8
  %20 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TO_QUEUE_NR(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TO_TRACE_CHAN_ID(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %2, align 8
  %31 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %33, i64 %35
  store %struct.auxtrace_queue* %36, %struct.auxtrace_queue** %8, align 8
  %37 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %38 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %37, i32 0, i32 0
  %39 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %38, align 8
  store %struct.cs_etm_queue* %39, %struct.cs_etm_queue** %9, align 8
  %40 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %2, align 8
  %41 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %40, i32 0, i32 0
  %42 = call i32 @auxtrace_heap__pop(%struct.TYPE_7__* %41)
  %43 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %43, i32 %44)
  store %struct.cs_etm_traceid_queue* %45, %struct.cs_etm_traceid_queue** %10, align 8
  %46 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %10, align 8
  %47 = icmp ne %struct.cs_etm_traceid_queue* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %18
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %92

51:                                               ; preds = %18
  %52 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %53 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %10, align 8
  %54 = call i32 @cs_etm__process_traceid_queue(%struct.cs_etm_queue* %52, %struct.cs_etm_traceid_queue* %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %92

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %80, %58
  %60 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %61 = call i32 @cs_etm__get_data_block(%struct.cs_etm_queue* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %92

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %11

69:                                               ; preds = %65
  %70 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %71 = call i32 @cs_etm__decode_data_block(%struct.cs_etm_queue* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %92

75:                                               ; preds = %69
  %76 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %77 = call i32 @cs_etm__etmq_get_timestamp(%struct.cs_etm_queue* %76, i32* %6)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %9, align 8
  %82 = call i32 @cs_etm__clear_all_traceid_queues(%struct.cs_etm_queue* %81)
  br label %59

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @TO_CS_QUEUE_NR(i32 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %2, align 8
  %88 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %87, i32 0, i32 0
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @auxtrace_heap__add(%struct.TYPE_7__* %88, i32 %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %11

92:                                               ; preds = %74, %64, %57, %48, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @TO_QUEUE_NR(i32) #1

declare dso_local i32 @TO_TRACE_CHAN_ID(i32) #1

declare dso_local i32 @auxtrace_heap__pop(%struct.TYPE_7__*) #1

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i32) #1

declare dso_local i32 @cs_etm__process_traceid_queue(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

declare dso_local i32 @cs_etm__get_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__decode_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__etmq_get_timestamp(%struct.cs_etm_queue*, i32*) #1

declare dso_local i32 @cs_etm__clear_all_traceid_queues(%struct.cs_etm_queue*) #1

declare dso_local i32 @TO_CS_QUEUE_NR(i32, i32) #1

declare dso_local i32 @auxtrace_heap__add(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
