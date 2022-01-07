; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__setup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { i32, i64 }
%struct.auxtrace_queue = type { %struct.cs_etm_queue*, i32 }
%struct.cs_etm_queue = type { i32, i64, %struct.cs_etm_auxtrace* }

@ENOMEM = common dso_local global i32 0, align 4
@trace_id_chan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_auxtrace*, %struct.auxtrace_queue*, i32)* @cs_etm__setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__setup_queue(%struct.cs_etm_auxtrace* %0, %struct.auxtrace_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.cs_etm_auxtrace*, align 8
  %5 = alloca %struct.auxtrace_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cs_etm_queue*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %4, align 8
  store %struct.auxtrace_queue* %1, %struct.auxtrace_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %5, align 8
  %13 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %12, i32 0, i32 0
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %13, align 8
  store %struct.cs_etm_queue* %14, %struct.cs_etm_queue** %11, align 8
  %15 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %5, align 8
  %16 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %21 = icmp ne %struct.cs_etm_queue* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  br label %79

23:                                               ; preds = %19
  %24 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %25 = call %struct.cs_etm_queue* @cs_etm__alloc_queue(%struct.cs_etm_auxtrace* %24)
  store %struct.cs_etm_queue* %25, %struct.cs_etm_queue** %11, align 8
  %26 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %27 = icmp ne %struct.cs_etm_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %33 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %5, align 8
  %34 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %33, i32 0, i32 0
  store %struct.cs_etm_queue* %32, %struct.cs_etm_queue** %34, align 8
  %35 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %36 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %37 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %36, i32 0, i32 2
  store %struct.cs_etm_auxtrace* %35, %struct.cs_etm_auxtrace** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %40 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %42 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %44 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %79

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %67
  %50 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %51 = call i32 @cs_etm__get_data_block(%struct.cs_etm_queue* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %79

55:                                               ; preds = %49
  %56 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %57 = call i32 @cs_etm__decode_data_block(%struct.cs_etm_queue* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %55
  %62 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %63 = call i32 @cs_etm__etmq_get_timestamp(%struct.cs_etm_queue* %62, i32* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %70

67:                                               ; preds = %61
  %68 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %11, align 8
  %69 = call i32 @cs_etm__clear_all_packet_queues(%struct.cs_etm_queue* %68)
  br label %49

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @trace_id_chan, align 4
  %73 = call i32 @TO_CS_QUEUE_NR(i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %4, align 8
  %75 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @auxtrace_heap__add(i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %70, %60, %54, %47, %28, %22
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.cs_etm_queue* @cs_etm__alloc_queue(%struct.cs_etm_auxtrace*) #1

declare dso_local i32 @cs_etm__get_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__decode_data_block(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm__etmq_get_timestamp(%struct.cs_etm_queue*, i32*) #1

declare dso_local i32 @cs_etm__clear_all_packet_queues(%struct.cs_etm_queue*) #1

declare dso_local i32 @TO_CS_QUEUE_NR(i32, i32) #1

declare dso_local i32 @auxtrace_heap__add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
