; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_sync_exception.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__is_sync_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32 }
%struct.cs_etm_traceid_queue = type { %struct.cs_etm_packet*, %struct.cs_etm_packet*, i32 }
%struct.cs_etm_packet = type { i64, i32 }

@__perf_cs_etmv3_magic = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_SMC = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_HYP = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_JAZELLE_THUMBEE = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_UNDEFINED_INSTR = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_PREFETCH_ABORT = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_DATA_FAULT = common dso_local global i64 0, align 8
@CS_ETMV3_EXC_GENERIC = common dso_local global i64 0, align 8
@__perf_cs_etmv4_magic = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_TRAP = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_ALIGNMENT = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_INST_FAULT = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_DATA_FAULT = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_CALL = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_FIQ = common dso_local global i64 0, align 8
@CS_ETMV4_EXC_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i64)* @cs_etm__is_sync_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__is_sync_exception(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_queue*, align 8
  %6 = alloca %struct.cs_etm_traceid_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cs_etm_packet*, align 8
  %10 = alloca %struct.cs_etm_packet*, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %5, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %12 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %15 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %14, i32 0, i32 1
  %16 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %15, align 8
  store %struct.cs_etm_packet* %16, %struct.cs_etm_packet** %9, align 8
  %17 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %18 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %17, i32 0, i32 0
  %19 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %18, align 8
  store %struct.cs_etm_packet* %19, %struct.cs_etm_packet** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @__perf_cs_etmv3_magic, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %3
  %24 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %25 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CS_ETMV3_EXC_SMC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %65, label %29

29:                                               ; preds = %23
  %30 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %31 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CS_ETMV3_EXC_HYP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %65, label %35

35:                                               ; preds = %29
  %36 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %37 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CS_ETMV3_EXC_JAZELLE_THUMBEE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %35
  %42 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %43 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CS_ETMV3_EXC_UNDEFINED_INSTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %49 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CS_ETMV3_EXC_PREFETCH_ABORT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %55 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CS_ETMV3_EXC_DATA_FAULT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %61 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CS_ETMV3_EXC_GENERIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %47, %41, %35, %29, %23
  store i32 1, i32* %4, align 4
  br label %127

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %3
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @__perf_cs_etmv4_magic, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %67
  %72 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %73 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CS_ETMV4_EXC_TRAP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %79 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CS_ETMV4_EXC_ALIGNMENT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %85 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CS_ETMV4_EXC_INST_FAULT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %91 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CS_ETMV4_EXC_DATA_FAULT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %83, %77, %71
  store i32 1, i32* %4, align 4
  br label %127

96:                                               ; preds = %89
  %97 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %98 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CS_ETMV4_EXC_CALL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %10, align 8
  %106 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %10, align 8
  %107 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @cs_etm__is_svc_instr(%struct.cs_etm_queue* %103, i32 %104, %struct.cs_etm_packet* %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %127

112:                                              ; preds = %102, %96
  %113 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %114 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CS_ETMV4_EXC_FIQ, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %9, align 8
  %120 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CS_ETMV4_EXC_END, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  br label %127

125:                                              ; preds = %118, %112
  br label %126

126:                                              ; preds = %125, %67
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %124, %111, %95, %65
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @cs_etm__is_svc_instr(%struct.cs_etm_queue*, i32, %struct.cs_etm_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
