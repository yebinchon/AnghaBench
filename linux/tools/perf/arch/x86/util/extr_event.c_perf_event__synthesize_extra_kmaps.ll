; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_event.c_perf_event__synthesize_extra_kmaps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_event.c_perf_event__synthesize_extra_kmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%struct.machine = type { i32, i32, %struct.map_groups }
%struct.map_groups = type { %struct.maps }
%struct.maps = type { i32 }
%struct.map = type { i32, i64, i64 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.kmap = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Not enough memory synthesizing mmap event for extra kernel maps\0A\00", align 1
@PERF_RECORD_MMAP = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_extra_kmaps(%struct.perf_tool* %0, i32 %1, %struct.machine* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map*, align 8
  %10 = alloca %struct.map_groups*, align 8
  %11 = alloca %struct.maps*, align 8
  %12 = alloca %union.perf_event*, align 8
  %13 = alloca %struct.kmap*, align 8
  %14 = alloca i64, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.machine* %2, %struct.machine** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.machine*, %struct.machine** %7, align 8
  %16 = getelementptr inbounds %struct.machine, %struct.machine* %15, i32 0, i32 2
  store %struct.map_groups* %16, %struct.map_groups** %10, align 8
  %17 = load %struct.map_groups*, %struct.map_groups** %10, align 8
  %18 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %17, i32 0, i32 0
  store %struct.maps* %18, %struct.maps** %11, align 8
  %19 = load %struct.machine*, %struct.machine** %7, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 48, %22
  %24 = trunc i64 %23 to i32
  %25 = call %union.perf_event* @zalloc(i32 %24)
  store %union.perf_event* %25, %union.perf_event** %12, align 8
  %26 = load %union.perf_event*, %union.perf_event** %12, align 8
  %27 = icmp ne %union.perf_event* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %136

30:                                               ; preds = %3
  %31 = load %struct.maps*, %struct.maps** %11, align 8
  %32 = call %struct.map* @maps__first(%struct.maps* %31)
  store %struct.map* %32, %struct.map** %9, align 8
  br label %33

33:                                               ; preds = %129, %30
  %34 = load %struct.map*, %struct.map** %9, align 8
  %35 = icmp ne %struct.map* %34, null
  br i1 %35, label %36, label %132

36:                                               ; preds = %33
  %37 = load %struct.map*, %struct.map** %9, align 8
  %38 = call i32 @__map__is_extra_kernel_map(%struct.map* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %129

41:                                               ; preds = %36
  %42 = load %struct.map*, %struct.map** %9, align 8
  %43 = call %struct.kmap* @map__kmap(%struct.map* %42)
  store %struct.kmap* %43, %struct.kmap** %13, align 8
  %44 = load %struct.kmap*, %struct.kmap** %13, align 8
  %45 = getelementptr inbounds %struct.kmap, %struct.kmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strlen(i32 %46)
  %48 = add nsw i64 %47, 1
  %49 = call i32 @PERF_ALIGN(i64 %48, i32 4)
  %50 = sext i32 %49 to i64
  %51 = add i64 44, %50
  %52 = load %struct.machine*, %struct.machine** %7, align 8
  %53 = getelementptr inbounds %struct.machine, %struct.machine* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %51, %55
  store i64 %56, i64* %14, align 8
  %57 = load %union.perf_event*, %union.perf_event** %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @memset(%union.perf_event* %57, i32 0, i64 %58)
  %60 = load i32, i32* @PERF_RECORD_MMAP, align 4
  %61 = load %union.perf_event*, %union.perf_event** %12, align 8
  %62 = bitcast %union.perf_event* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  %65 = load %struct.machine*, %struct.machine** %7, align 8
  %66 = call i64 @machine__is_host(%struct.machine* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %41
  %69 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  %70 = load %union.perf_event*, %union.perf_event** %12, align 8
  %71 = bitcast %union.perf_event* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %78

73:                                               ; preds = %41
  %74 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  %75 = load %union.perf_event*, %union.perf_event** %12, align 8
  %76 = bitcast %union.perf_event* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i64, i64* %14, align 8
  %80 = load %union.perf_event*, %union.perf_event** %12, align 8
  %81 = bitcast %union.perf_event* %80 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  %84 = load %struct.map*, %struct.map** %9, align 8
  %85 = getelementptr inbounds %struct.map, %struct.map* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %union.perf_event*, %union.perf_event** %12, align 8
  %88 = bitcast %union.perf_event* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i64 %86, i64* %89, align 8
  %90 = load %struct.map*, %struct.map** %9, align 8
  %91 = getelementptr inbounds %struct.map, %struct.map* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.map*, %struct.map** %9, align 8
  %94 = getelementptr inbounds %struct.map, %struct.map* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %union.perf_event*, %union.perf_event** %12, align 8
  %98 = bitcast %union.perf_event* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i64 %96, i64* %99, align 8
  %100 = load %struct.map*, %struct.map** %9, align 8
  %101 = getelementptr inbounds %struct.map, %struct.map* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %union.perf_event*, %union.perf_event** %12, align 8
  %104 = bitcast %union.perf_event* %103 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.machine*, %struct.machine** %7, align 8
  %107 = getelementptr inbounds %struct.machine, %struct.machine* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %union.perf_event*, %union.perf_event** %12, align 8
  %110 = bitcast %union.perf_event* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %union.perf_event*, %union.perf_event** %12, align 8
  %113 = bitcast %union.perf_event* %112 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.kmap*, %struct.kmap** %13, align 8
  %117 = getelementptr inbounds %struct.kmap, %struct.kmap* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PATH_MAX, align 4
  %120 = call i32 @strlcpy(i32 %115, i32 %118, i32 %119)
  %121 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %122 = load %union.perf_event*, %union.perf_event** %12, align 8
  %123 = load %struct.machine*, %struct.machine** %7, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %121, %union.perf_event* %122, %struct.machine* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %78
  store i32 -1, i32* %8, align 4
  br label %132

128:                                              ; preds = %78
  br label %129

129:                                              ; preds = %128, %40
  %130 = load %struct.map*, %struct.map** %9, align 8
  %131 = call %struct.map* @map__next(%struct.map* %130)
  store %struct.map* %131, %struct.map** %9, align 8
  br label %33

132:                                              ; preds = %127, %33
  %133 = load %union.perf_event*, %union.perf_event** %12, align 8
  %134 = call i32 @free(%union.perf_event* %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %28
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %union.perf_event* @zalloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local i32 @__map__is_extra_kernel_map(%struct.map*) #1

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

declare dso_local i32 @PERF_ALIGN(i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memset(%union.perf_event*, i32, i64) #1

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

declare dso_local i32 @free(%union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
