; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__etmq_get_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i64 }
%struct.cs_etm_packet_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, i64*)* @cs_etm__etmq_get_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__etmq_get_timestamp(%struct.cs_etm_queue* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cs_etm_packet_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %17 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %22 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.cs_etm_packet_queue* @cs_etm__etmq_get_packet_queue(%struct.cs_etm_queue* %21, i64 %24)
  store %struct.cs_etm_packet_queue* %25, %struct.cs_etm_packet_queue** %6, align 8
  %26 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %6, align 8
  %27 = icmp ne %struct.cs_etm_packet_queue* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %31 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %6, align 8
  %33 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %28, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.cs_etm_packet_queue* @cs_etm__etmq_get_packet_queue(%struct.cs_etm_queue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
