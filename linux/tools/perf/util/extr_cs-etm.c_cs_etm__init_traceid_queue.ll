; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__init_traceid_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__init_traceid_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i64, %struct.cs_etm_auxtrace* }
%struct.cs_etm_auxtrace = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }
%struct.cs_etm_traceid_queue = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PERF_SAMPLE_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*, i32)* @cs_etm__init_traceid_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__init_traceid_queue(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_queue*, align 8
  %6 = alloca %struct.cs_etm_traceid_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.auxtrace_queue*, align 8
  %10 = alloca %struct.cs_etm_auxtrace*, align 8
  %11 = alloca i64, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %5, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %15 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %14, i32 0, i32 1
  %16 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %15, align 8
  store %struct.cs_etm_auxtrace* %16, %struct.cs_etm_auxtrace** %10, align 8
  %17 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %18 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %17, i32 0, i32 8
  %19 = call i32 @cs_etm__clear_packet_queue(i32* %18)
  %20 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %21 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %20, i32 0, i32 1
  %22 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %21, align 8
  %23 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %24, align 8
  %26 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %5, align 8
  %27 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %25, i64 %28
  store %struct.auxtrace_queue* %29, %struct.auxtrace_queue** %9, align 8
  %30 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %9, align 8
  %31 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %34 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %36 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %39 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = call i8* @zalloc(i64 4)
  %41 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %42 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %44 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  br label %116

48:                                               ; preds = %3
  %49 = call i8* @zalloc(i64 4)
  %50 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %51 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %53 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %103

57:                                               ; preds = %48
  %58 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %10, align 8
  %59 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %57
  store i64 4, i64* %11, align 8
  %64 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %10, align 8
  %65 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i8* @zalloc(i64 %72)
  %74 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %75 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %77 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %63
  br label %103

81:                                               ; preds = %63
  %82 = load i64, i64* %11, align 8
  %83 = call i8* @zalloc(i64 %82)
  %84 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %85 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %87 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %103

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %57
  %93 = load i32, i32* @PERF_SAMPLE_MAX_SIZE, align 4
  %94 = call i32 @malloc(i32 %93)
  %95 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %96 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %98 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %103

102:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %118

103:                                              ; preds = %101, %90, %80, %56
  %104 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %105 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %104, i32 0, i32 4
  %106 = call i32 @zfree(i8** %105)
  %107 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %108 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %107, i32 0, i32 3
  %109 = call i32 @zfree(i8** %108)
  %110 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %111 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %110, i32 0, i32 2
  %112 = call i32 @zfree(i8** %111)
  %113 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %6, align 8
  %114 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %113, i32 0, i32 1
  %115 = call i32 @zfree(i8** %114)
  br label %116

116:                                              ; preds = %103, %47
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %102
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @cs_etm__clear_packet_queue(i32*) #1

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @zfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
