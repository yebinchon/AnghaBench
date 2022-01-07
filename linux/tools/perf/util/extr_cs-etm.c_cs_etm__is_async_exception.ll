; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_async_exception.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_async_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_traceid_queue = type { %struct.cs_etm_packet* }
%struct.cs_etm_packet = type { i64 }

@__perf_cs_etmv3_magic = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_DEBUG_HALT = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_ASYNC_DATA_ABORT = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_PE_RESET = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_IRQ = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_FIQ = common dso_local global i64 0, align 8
@__perf_cs_etmv4_magic = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_RESET = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_DEBUG_HALT = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_SYSTEM_ERROR = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_INST_DEBUG = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_DATA_DEBUG = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_IRQ = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_FIQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_traceid_queue*, i64)* @cs_etm__is_async_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__is_async_exception(%struct.cs_etm_traceid_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_traceid_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cs_etm_packet*, align 8
  store %struct.cs_etm_traceid_queue* %0, %struct.cs_etm_traceid_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %7, i32 0, i32 0
  %9 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %8, align 8
  store %struct.cs_etm_packet* %9, %struct.cs_etm_packet** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @__perf_cs_etmv3_magic, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %15 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CS_ETMV3_EXC_DEBUG_HALT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  %20 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %21 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CS_ETMV3_EXC_ASYNC_DATA_ABORT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %27 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CS_ETMV3_EXC_PE_RESET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %33 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CS_ETMV3_EXC_IRQ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %39 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CS_ETMV3_EXC_FIQ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31, %25, %19, %13
  store i32 1, i32* %3, align 4
  br label %94

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @__perf_cs_etmv4_magic, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %51 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CS_ETMV4_EXC_RESET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %91, label %55

55:                                               ; preds = %49
  %56 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %57 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CS_ETMV4_EXC_DEBUG_HALT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %91, label %61

61:                                               ; preds = %55
  %62 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %63 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CS_ETMV4_EXC_SYSTEM_ERROR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %91, label %67

67:                                               ; preds = %61
  %68 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %69 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CS_ETMV4_EXC_INST_DEBUG, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %75 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CS_ETMV4_EXC_DATA_DEBUG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %81 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CS_ETMV4_EXC_IRQ, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %6, align 8
  %87 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CS_ETMV4_EXC_FIQ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %79, %73, %67, %61, %55, %49
  store i32 1, i32* %3, align 4
  br label %94

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %45
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %91, %43
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
