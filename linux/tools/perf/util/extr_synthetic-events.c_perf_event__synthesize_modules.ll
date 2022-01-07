; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_modules.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%struct.machine = type { i32, i32 }
%struct.map = type { %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.maps = type { i32 }
%union.perf_event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [62 x i8] c"Not enough memory synthesizing mmap event for kernel modules\0A\00", align 1
@PERF_RECORD_MMAP = common dso_local global i8* null, align 8
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_modules(%struct.perf_tool* %0, i32 %1, %struct.machine* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map*, align 8
  %10 = alloca %struct.maps*, align 8
  %11 = alloca %union.perf_event*, align 8
  %12 = alloca i64, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.machine* %2, %struct.machine** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.machine*, %struct.machine** %7, align 8
  %14 = call %struct.maps* @machine__kernel_maps(%struct.machine* %13)
  store %struct.maps* %14, %struct.maps** %10, align 8
  %15 = load %struct.machine*, %struct.machine** %7, align 8
  %16 = getelementptr inbounds %struct.machine, %struct.machine* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 40, %18
  %20 = trunc i64 %19 to i32
  %21 = call %union.perf_event* @zalloc(i32 %20)
  store %union.perf_event* %21, %union.perf_event** %11, align 8
  %22 = load %union.perf_event*, %union.perf_event** %11, align 8
  %23 = icmp eq %union.perf_event* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %150

26:                                               ; preds = %3
  %27 = load i8*, i8** @PERF_RECORD_MMAP, align 8
  %28 = load %union.perf_event*, %union.perf_event** %11, align 8
  %29 = bitcast %union.perf_event* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load %struct.machine*, %struct.machine** %7, align 8
  %32 = call i64 @machine__is_host(%struct.machine* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  %36 = load %union.perf_event*, %union.perf_event** %11, align 8
  %37 = bitcast %union.perf_event* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  br label %44

39:                                               ; preds = %26
  %40 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  %41 = load %union.perf_event*, %union.perf_event** %11, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.maps*, %struct.maps** %10, align 8
  %46 = call %struct.map* @maps__first(%struct.maps* %45)
  store %struct.map* %46, %struct.map** %9, align 8
  br label %47

47:                                               ; preds = %143, %44
  %48 = load %struct.map*, %struct.map** %9, align 8
  %49 = icmp ne %struct.map* %48, null
  br i1 %49, label %50, label %146

50:                                               ; preds = %47
  %51 = load %struct.map*, %struct.map** %9, align 8
  %52 = call i32 @__map__is_kmodule(%struct.map* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %143

55:                                               ; preds = %50
  %56 = load %struct.map*, %struct.map** %9, align 8
  %57 = getelementptr inbounds %struct.map, %struct.map* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i64 @PERF_ALIGN(i64 %61, i32 4)
  store i64 %62, i64* %12, align 8
  %63 = load i8*, i8** @PERF_RECORD_MMAP, align 8
  %64 = load %union.perf_event*, %union.perf_event** %11, align 8
  %65 = bitcast %union.perf_event* %64 to %struct.TYPE_7__*
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 4, %68
  %70 = sub i64 40, %69
  %71 = trunc i64 %70 to i32
  %72 = load %union.perf_event*, %union.perf_event** %11, align 8
  %73 = bitcast %union.perf_event* %72 to %struct.TYPE_7__*
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %union.perf_event*, %union.perf_event** %11, align 8
  %77 = bitcast %union.perf_event* %76 to %struct.TYPE_7__*
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load %struct.machine*, %struct.machine** %7, align 8
  %85 = getelementptr inbounds %struct.machine, %struct.machine* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memset(i32 %83, i32 0, i32 %86)
  %88 = load %struct.machine*, %struct.machine** %7, align 8
  %89 = getelementptr inbounds %struct.machine, %struct.machine* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %union.perf_event*, %union.perf_event** %11, align 8
  %92 = bitcast %union.perf_event* %91 to %struct.TYPE_7__*
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %90
  store i32 %96, i32* %94, align 8
  %97 = load %struct.map*, %struct.map** %9, align 8
  %98 = getelementptr inbounds %struct.map, %struct.map* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %union.perf_event*, %union.perf_event** %11, align 8
  %101 = bitcast %union.perf_event* %100 to %struct.TYPE_7__*
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i64 %99, i64* %102, align 8
  %103 = load %struct.map*, %struct.map** %9, align 8
  %104 = getelementptr inbounds %struct.map, %struct.map* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.map*, %struct.map** %9, align 8
  %107 = getelementptr inbounds %struct.map, %struct.map* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %union.perf_event*, %union.perf_event** %11, align 8
  %111 = bitcast %union.perf_event* %110 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i64 %109, i64* %112, align 8
  %113 = load %struct.machine*, %struct.machine** %7, align 8
  %114 = getelementptr inbounds %struct.machine, %struct.machine* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %union.perf_event*, %union.perf_event** %11, align 8
  %117 = bitcast %union.perf_event* %116 to %struct.TYPE_7__*
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %union.perf_event*, %union.perf_event** %11, align 8
  %120 = bitcast %union.perf_event* %119 to %struct.TYPE_7__*
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.map*, %struct.map** %9, align 8
  %124 = getelementptr inbounds %struct.map, %struct.map* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.map*, %struct.map** %9, align 8
  %129 = getelementptr inbounds %struct.map, %struct.map* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  %134 = call i32 @memcpy(i32 %122, i32 %127, i64 %133)
  %135 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %136 = load %union.perf_event*, %union.perf_event** %11, align 8
  %137 = load %struct.machine*, %struct.machine** %7, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %135, %union.perf_event* %136, %struct.machine* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %55
  store i32 -1, i32* %8, align 4
  br label %146

142:                                              ; preds = %55
  br label %143

143:                                              ; preds = %142, %54
  %144 = load %struct.map*, %struct.map** %9, align 8
  %145 = call %struct.map* @map__next(%struct.map* %144)
  store %struct.map* %145, %struct.map** %9, align 8
  br label %47

146:                                              ; preds = %141, %47
  %147 = load %union.perf_event*, %union.perf_event** %11, align 8
  %148 = call i32 @free(%union.perf_event* %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %24
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.maps* @machine__kernel_maps(%struct.machine*) #1

declare dso_local %union.perf_event* @zalloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local i32 @__map__is_kmodule(%struct.map*) #1

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

declare dso_local i32 @free(%union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
