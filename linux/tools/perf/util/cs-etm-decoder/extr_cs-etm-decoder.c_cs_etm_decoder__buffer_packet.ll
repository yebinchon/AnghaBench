; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__buffer_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__buffer_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_packet_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8*, i8*, i32 }

@CS_ETM_PACKET_MAX_BUFFER = common dso_local global i32 0, align 4
@OCSD_RESP_FATAL_SYS_ERR = common dso_local global i32 0, align 4
@CS_ETM_ISA_UNKNOWN = common dso_local global i32 0, align 4
@CS_ETM_INVAL_ADDR = common dso_local global i8* null, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@OCSD_RESP_WAIT = common dso_local global i32 0, align 4
@OCSD_RESP_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_packet_queue*, i32, i32)* @cs_etm_decoder__buffer_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__buffer_packet(%struct.cs_etm_packet_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_packet_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cs_etm_packet_queue* %0, %struct.cs_etm_packet_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %11 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CS_ETM_PACKET_MAX_BUFFER, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @OCSD_RESP_FATAL_SYS_ERR, align 4
  store i32 %17, i32* %4, align 4
  br label %155

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @cs_etm__get_cpu(i32 %19, i32* %9)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @OCSD_RESP_FATAL_SYS_ERR, align 4
  store i32 %23, i32* %4, align 4
  br label %155

24:                                               ; preds = %18
  %25 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %26 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @CS_ETM_PACKET_MAX_BUFFER, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %35 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %37 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %42 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 8
  %48 = load i32, i32* @CS_ETM_ISA_UNKNOWN, align 4
  %49 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %50 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 13
  store i32 %48, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %58 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  %64 = load i8*, i8** @CS_ETM_INVAL_ADDR, align 8
  %65 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %66 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 12
  store i8* %64, i8** %71, align 8
  %72 = load i8*, i8** @CS_ETM_INVAL_ADDR, align 8
  %73 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %74 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 11
  store i8* %72, i8** %79, align 8
  %80 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %81 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 10
  store i64 0, i64* %86, align 8
  %87 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %88 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %95 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 9
  store i64 0, i64* %100, align 8
  %101 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %102 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 8
  store i64 0, i64* %107, align 8
  %108 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %109 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 7
  store i64 0, i64* %114, align 8
  %115 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %116 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  %122 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %123 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @UINT32_MAX, align 4
  %130 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %131 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  store i32 %129, i32* %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %139 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  store i32 %137, i32* %144, align 4
  %145 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %5, align 8
  %146 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CS_ETM_PACKET_MAX_BUFFER, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %24
  %152 = load i32, i32* @OCSD_RESP_WAIT, align 4
  store i32 %152, i32* %4, align 4
  br label %155

153:                                              ; preds = %24
  %154 = load i32, i32* @OCSD_RESP_CONT, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %151, %22, %16
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @cs_etm__get_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
