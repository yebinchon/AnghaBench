; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__buffer_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__buffer_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_packet_queue = type { i64, i32, %struct.cs_etm_packet* }
%struct.cs_etm_packet = type { i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@CS_ETM_RANGE = common dso_local global i32 0, align 4
@OCSD_RESP_CONT = common dso_local global i32 0, align 4
@OCSD_RESP_WAIT = common dso_local global i32 0, align 4
@CS_ETM_ISA_A64 = common dso_local global i32 0, align 4
@CS_ETM_ISA_A32 = common dso_local global i32 0, align 4
@CS_ETM_ISA_T32 = common dso_local global i32 0, align 4
@CS_ETM_ISA_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_packet_queue*, %struct.TYPE_3__*, i32)* @cs_etm_decoder__buffer_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__buffer_range(%struct.cs_etm_queue* %0, %struct.cs_etm_packet_queue* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_queue*, align 8
  %7 = alloca %struct.cs_etm_packet_queue*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cs_etm_packet*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %6, align 8
  store %struct.cs_etm_packet_queue* %1, %struct.cs_etm_packet_queue** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @CS_ETM_RANGE, align 4
  %15 = call i32 @cs_etm_decoder__buffer_packet(%struct.cs_etm_packet_queue* %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @OCSD_RESP_CONT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OCSD_RESP_WAIT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %128

25:                                               ; preds = %19, %4
  %26 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %7, align 8
  %27 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %26, i32 0, i32 2
  %28 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %27, align 8
  %29 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %7, align 8
  %30 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %28, i64 %31
  store %struct.cs_etm_packet* %32, %struct.cs_etm_packet** %11, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %49 [
    i32 134, label %36
    i32 133, label %40
    i32 129, label %44
    i32 130, label %48
    i32 131, label %48
    i32 132, label %48
    i32 128, label %48
  ]

36:                                               ; preds = %25
  %37 = load i32, i32* @CS_ETM_ISA_A64, align 4
  %38 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %39 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  br label %53

40:                                               ; preds = %25
  %41 = load i32, i32* @CS_ETM_ISA_A32, align 4
  %42 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %43 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  br label %53

44:                                               ; preds = %25
  %45 = load i32, i32* @CS_ETM_ISA_T32, align 4
  %46 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %47 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  br label %53

48:                                               ; preds = %25, %25, %25, %25
  br label %49

49:                                               ; preds = %25, %48
  %50 = load i32, i32* @CS_ETM_ISA_UNKNOWN, align 4
  %51 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %52 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %44, %40, %36
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %58 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %63 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %68 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %67, i32 0, i32 5
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %73 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %78 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %83 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %94 [
    i32 140, label %87
    i32 139, label %87
    i32 137, label %93
    i32 138, label %93
    i32 135, label %93
    i32 136, label %93
  ]

87:                                               ; preds = %53, %53
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %92 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %97

93:                                               ; preds = %53, %53, %53, %53
  br label %94

94:                                               ; preds = %53, %93
  %95 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %96 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %11, align 8
  %102 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %104 = call i64 @cs_etm__etmq_is_timeless(%struct.cs_etm_queue* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %126

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @OCSD_RESP_WAIT, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %126

112:                                              ; preds = %107
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %7, align 8
  %117 = getelementptr inbounds %struct.cs_etm_packet_queue, %struct.cs_etm_packet_queue* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 8
  %122 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %123 = load %struct.cs_etm_packet_queue*, %struct.cs_etm_packet_queue** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @cs_etm_decoder__do_soft_timestamp(%struct.cs_etm_queue* %122, %struct.cs_etm_packet_queue* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %112, %111, %106
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %23
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @cs_etm_decoder__buffer_packet(%struct.cs_etm_packet_queue*, i32, i32) #1

declare dso_local i64 @cs_etm__etmq_is_timeless(%struct.cs_etm_queue*) #1

declare dso_local i32 @cs_etm_decoder__do_soft_timestamp(%struct.cs_etm_queue*, %struct.cs_etm_packet_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
