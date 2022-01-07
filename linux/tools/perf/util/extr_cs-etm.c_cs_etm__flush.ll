; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__flush.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.cs_etm_auxtrace* }
%struct.cs_etm_auxtrace = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.cs_etm_traceid_queue = type { %struct.cs_etm_packet*, %struct.cs_etm_packet*, i32 }
%struct.cs_etm_packet = type { i64 }

@CS_ETM_EMPTY = common dso_local global i64 0, align 8
@CS_ETM_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*)* @cs_etm__flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__flush(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_queue*, align 8
  %5 = alloca %struct.cs_etm_traceid_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs_etm_auxtrace*, align 8
  %8 = alloca %struct.cs_etm_packet*, align 8
  %9 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %4, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %11 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %10, i32 0, i32 0
  %12 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %11, align 8
  store %struct.cs_etm_auxtrace* %12, %struct.cs_etm_auxtrace** %7, align 8
  %13 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %14 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %13, i32 0, i32 0
  %15 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %14, align 8
  %16 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CS_ETM_EMPTY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %23 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %22, i32 0, i32 0
  %24 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %23, align 8
  %25 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %21
  %30 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %31 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %30, i32 0, i32 0
  %32 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %31, align 8
  %33 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CS_ETM_RANGE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %39 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %38, i32 0, i32 0
  %40 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %39, align 8
  %41 = call i32 @cs_etm__last_executed_instr(%struct.cs_etm_packet* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %43 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %46 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue* %42, %struct.cs_etm_traceid_queue* %43, i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %104

53:                                               ; preds = %37
  %54 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %55 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %29, %21
  %57 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %7, align 8
  %58 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %63 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %62, i32 0, i32 0
  %64 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %63, align 8
  %65 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CS_ETM_RANGE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %4, align 8
  %71 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %72 = call i32 @cs_etm__synth_branch_sample(%struct.cs_etm_queue* %70, %struct.cs_etm_traceid_queue* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %61, %56
  br label %79

79:                                               ; preds = %78, %20
  %80 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %7, align 8
  %81 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %7, align 8
  %86 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %84, %79
  %91 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %92 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %91, i32 0, i32 1
  %93 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %92, align 8
  store %struct.cs_etm_packet* %93, %struct.cs_etm_packet** %8, align 8
  %94 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %95 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %94, i32 0, i32 0
  %96 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %95, align 8
  %97 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %98 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %97, i32 0, i32 1
  store %struct.cs_etm_packet* %96, %struct.cs_etm_packet** %98, align 8
  %99 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  %100 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %5, align 8
  %101 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %100, i32 0, i32 0
  store %struct.cs_etm_packet* %99, %struct.cs_etm_packet** %101, align 8
  br label %102

102:                                              ; preds = %90, %84
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %75, %51
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @cs_etm__last_executed_instr(%struct.cs_etm_packet*) #1

declare dso_local i32 @cs_etm__synth_instruction_sample(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i32, i32) #1

declare dso_local i32 @cs_etm__synth_branch_sample(%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
