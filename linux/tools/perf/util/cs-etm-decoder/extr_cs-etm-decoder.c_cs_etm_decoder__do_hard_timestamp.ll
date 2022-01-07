; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__do_hard_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__do_hard_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cs_etm_packet_queue = type { i64, i64, i64 }

@OCSD_RESP_FATAL_SYS_ERR = common dso_local global i32 0, align 4
@OCSD_RESP_CONT = common dso_local global i32 0, align 4
@OCSD_RESP_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.TYPE_3__*, i32)* @cs_etm_decoder__do_hard_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__do_hard_timestamp(%struct.cs_etm_queue* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_queue*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cs_etm_packet_queue*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.cs_etm_packet_queue* @cs_etm__etmq_get_packet_queue(%struct.cs_etm_queue* %9, i32 %10)
  store %struct.cs_etm_packet_queue* %11, %struct.cs_etm_packet_queue** %8, align 8
  %12 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %13 = icmp ne %struct.cs_etm_packet_queue* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @OCSD_RESP_FATAL_SYS_ERR, align 4
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %18 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %26 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @OCSD_RESP_CONT, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %33 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %37 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %42 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %8, align 8
  %44 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @cs_etm__etmq_set_traceid_queue_timestamp(%struct.cs_etm_queue* %45, i32 %46)
  %48 = load i32, i32* @OCSD_RESP_WAIT, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %28, %21, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.cs_etm_packet_queue* @cs_etm__etmq_get_packet_queue(%struct.cs_etm_queue*, i32) #1

declare dso_local i32 @cs_etm__etmq_set_traceid_queue_timestamp(%struct.cs_etm_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
