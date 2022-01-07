; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i32, i32 }
%struct.cs_etm_auxtrace = type { i32 }
%struct.cs_etm_decoder_params = type { i32 }
%struct.cs_etm_trace_params = type { i32 }

@CS_ETM_OPERATION_DECODE = common dso_local global i32 0, align 4
@cs_etm__mem_access = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs_etm_queue* (%struct.cs_etm_auxtrace*)* @cs_etm__alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs_etm_queue* @cs_etm__alloc_queue(%struct.cs_etm_auxtrace* %0) #0 {
  %2 = alloca %struct.cs_etm_queue*, align 8
  %3 = alloca %struct.cs_etm_auxtrace*, align 8
  %4 = alloca %struct.cs_etm_decoder_params, align 4
  %5 = alloca %struct.cs_etm_trace_params*, align 8
  %6 = alloca %struct.cs_etm_queue*, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %3, align 8
  store %struct.cs_etm_trace_params* null, %struct.cs_etm_trace_params** %5, align 8
  %7 = call i8* @zalloc(i32 8)
  %8 = bitcast i8* %7 to %struct.cs_etm_queue*
  store %struct.cs_etm_queue* %8, %struct.cs_etm_queue** %6, align 8
  %9 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %10 = icmp ne %struct.cs_etm_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.cs_etm_queue* null, %struct.cs_etm_queue** %2, align 8
  br label %81

12:                                               ; preds = %1
  %13 = call i32 @intlist__new(i32* null)
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %15 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %17 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %74

21:                                               ; preds = %12
  %22 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %23 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @zalloc(i32 %27)
  %29 = bitcast i8* %28 to %struct.cs_etm_trace_params*
  store %struct.cs_etm_trace_params* %29, %struct.cs_etm_trace_params** %5, align 8
  %30 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %31 = icmp ne %struct.cs_etm_trace_params* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %74

33:                                               ; preds = %21
  %34 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %35 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %36 = call i64 @cs_etm__init_trace_params(%struct.cs_etm_trace_params* %34, %struct.cs_etm_auxtrace* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %74

39:                                               ; preds = %33
  %40 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %41 = load i32, i32* @CS_ETM_OPERATION_DECODE, align 4
  %42 = call i64 @cs_etm__init_decoder_params(%struct.cs_etm_decoder_params* %4, %struct.cs_etm_queue* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %74

45:                                               ; preds = %39
  %46 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %47 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %50 = call i32 @cs_etm_decoder__new(i32 %48, %struct.cs_etm_decoder_params* %4, %struct.cs_etm_trace_params* %49)
  %51 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %52 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %54 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %74

58:                                               ; preds = %45
  %59 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %60 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @cs_etm__mem_access, align 4
  %63 = call i64 @cs_etm_decoder__add_mem_access_cb(i32 %61, i32 0, i32 -1, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %69

66:                                               ; preds = %58
  %67 = call i32 @zfree(%struct.cs_etm_trace_params** %5)
  %68 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  store %struct.cs_etm_queue* %68, %struct.cs_etm_queue** %2, align 8
  br label %81

69:                                               ; preds = %65
  %70 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %71 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cs_etm_decoder__free(i32 %72)
  br label %74

74:                                               ; preds = %69, %57, %44, %38, %32, %20
  %75 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %76 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @intlist__delete(i32 %77)
  %79 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %6, align 8
  %80 = call i32 @free(%struct.cs_etm_queue* %79)
  store %struct.cs_etm_queue* null, %struct.cs_etm_queue** %2, align 8
  br label %81

81:                                               ; preds = %74, %66, %11
  %82 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %2, align 8
  ret %struct.cs_etm_queue* %82
}

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @intlist__new(i32*) #1

declare dso_local i64 @cs_etm__init_trace_params(%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*) #1

declare dso_local i64 @cs_etm__init_decoder_params(%struct.cs_etm_decoder_params*, %struct.cs_etm_queue*, i32) #1

declare dso_local i32 @cs_etm_decoder__new(i32, %struct.cs_etm_decoder_params*, %struct.cs_etm_trace_params*) #1

declare dso_local i64 @cs_etm_decoder__add_mem_access_cb(i32, i32, i32, i32) #1

declare dso_local i32 @zfree(%struct.cs_etm_trace_params**) #1

declare dso_local i32 @cs_etm_decoder__free(i32) #1

declare dso_local i32 @intlist__delete(i32) #1

declare dso_local i32 @free(%struct.cs_etm_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
