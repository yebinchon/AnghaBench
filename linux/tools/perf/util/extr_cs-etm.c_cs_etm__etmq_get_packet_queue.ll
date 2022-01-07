; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_packet_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_packet_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_packet_queue = type { i32 }
%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_traceid_queue = type { %struct.cs_etm_packet_queue }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cs_etm_packet_queue* @cs_etm__etmq_get_packet_queue(%struct.cs_etm_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_etm_packet_queue*, align 8
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_traceid_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue* %7, i32 %8)
  store %struct.cs_etm_traceid_queue* %9, %struct.cs_etm_traceid_queue** %6, align 8
  %10 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %11 = icmp ne %struct.cs_etm_traceid_queue* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %14 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %13, i32 0, i32 0
  store %struct.cs_etm_packet_queue* %14, %struct.cs_etm_packet_queue** %3, align 8
  br label %16

15:                                               ; preds = %2
  store %struct.cs_etm_packet_queue* null, %struct.cs_etm_packet_queue** %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %3, align 8
  ret %struct.cs_etm_packet_queue* %17
}

declare dso_local %struct.cs_etm_traceid_queue* @cs_etm__etmq_get_traceid_queue(%struct.cs_etm_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
