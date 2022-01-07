; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__clear_packet_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__clear_packet_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_packet_queue = type { %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8*, i8*, i32 }

@CS_ETM_PACKET_MAX_BUFFER = common dso_local global i32 0, align 4
@CS_ETM_ISA_UNKNOWN = common dso_local global i32 0, align 4
@CS_ETM_INVAL_ADDR = common dso_local global i8* null, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_packet_queue*)* @cs_etm__clear_packet_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__clear_packet_queue(%struct.cs_etm_packet_queue* %0) #0 {
  %2 = alloca %struct.cs_etm_packet_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.cs_etm_packet_queue* %0, %struct.cs_etm_packet_queue** %2, align 8
  %4 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %5 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %4, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %7 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %9 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %112, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CS_ETM_PACKET_MAX_BUFFER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %115

14:                                               ; preds = %10
  %15 = load i32, i32* @CS_ETM_ISA_UNKNOWN, align 4
  %16 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %17 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 12
  store i32 %15, i32* %22, align 8
  %23 = load i8*, i8** @CS_ETM_INVAL_ADDR, align 8
  %24 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %25 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  store i8* %23, i8** %30, align 8
  %31 = load i8*, i8** @CS_ETM_INVAL_ADDR, align 8
  %32 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %33 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 10
  store i8* %31, i8** %38, align 8
  %39 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %40 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %47 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %54 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %61 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %68 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %75 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %82 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @UINT32_MAX, align 4
  %89 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %90 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* @UINT8_MAX, align 4
  %97 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %98 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 %96, i32* %103, align 8
  %104 = load i32, i32* @INT_MIN, align 4
  %105 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %2, align 8
  %106 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %14
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %10

115:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
