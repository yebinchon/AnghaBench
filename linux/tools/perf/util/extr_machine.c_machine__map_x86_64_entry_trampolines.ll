; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__map_x86_64_entry_trampolines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__map_x86_64_entry_trampolines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32, %struct.map_groups }
%struct.map_groups = type { %struct.maps }
%struct.maps = type { i32 }
%struct.dso = type { i32 }
%struct.map = type { i32, i32 (%struct.map*, i32)* }
%struct.kmap = type { i32 }
%struct.extra_kernel_map = type { i32, i64, i64, i64 }

@X86_64_CPU_ENTRY_AREA_PER_CPU = common dso_local global i64 0, align 8
@X86_64_CPU_ENTRY_AREA_SIZE = common dso_local global i32 0, align 4
@X86_64_ENTRY_TRAMPOLINE = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8
@ENTRY_TRAMPOLINE_NAME = common dso_local global i32 0, align 4
@KMAP_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__map_x86_64_entry_trampolines(%struct.machine* %0, %struct.dso* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.map_groups*, align 8
  %7 = alloca %struct.maps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.map*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kmap*, align 8
  %14 = alloca %struct.map*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.extra_kernel_map, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.dso* %1, %struct.dso** %5, align 8
  %17 = load %struct.machine*, %struct.machine** %4, align 8
  %18 = getelementptr inbounds %struct.machine, %struct.machine* %17, i32 0, i32 1
  store %struct.map_groups* %18, %struct.map_groups** %6, align 8
  %19 = load %struct.map_groups*, %struct.map_groups** %6, align 8
  %20 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %19, i32 0, i32 0
  store %struct.maps* %20, %struct.maps** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.maps*, %struct.maps** %7, align 8
  %22 = call %struct.map* @maps__first(%struct.maps* %21)
  store %struct.map* %22, %struct.map** %11, align 8
  br label %23

23:                                               ; preds = %59, %2
  %24 = load %struct.map*, %struct.map** %11, align 8
  %25 = icmp ne %struct.map* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load %struct.map*, %struct.map** %11, align 8
  %28 = call %struct.kmap* @__map__kmap(%struct.map* %27)
  store %struct.kmap* %28, %struct.kmap** %13, align 8
  %29 = load %struct.kmap*, %struct.kmap** %13, align 8
  %30 = icmp ne %struct.kmap* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.kmap*, %struct.kmap** %13, align 8
  %33 = getelementptr inbounds %struct.kmap, %struct.kmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_entry_trampoline(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %26
  br label %59

38:                                               ; preds = %31
  %39 = load %struct.map_groups*, %struct.map_groups** %6, align 8
  %40 = load %struct.map*, %struct.map** %11, align 8
  %41 = getelementptr inbounds %struct.map, %struct.map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.map* @map_groups__find(%struct.map_groups* %39, i32 %42)
  store %struct.map* %43, %struct.map** %14, align 8
  %44 = load %struct.map*, %struct.map** %14, align 8
  %45 = load %struct.map*, %struct.map** %11, align 8
  %46 = icmp ne %struct.map* %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.map*, %struct.map** %14, align 8
  %49 = getelementptr inbounds %struct.map, %struct.map* %48, i32 0, i32 1
  %50 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %49, align 8
  %51 = load %struct.map*, %struct.map** %14, align 8
  %52 = load %struct.map*, %struct.map** %11, align 8
  %53 = getelementptr inbounds %struct.map, %struct.map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %50(%struct.map* %51, i32 %54)
  %56 = load %struct.map*, %struct.map** %11, align 8
  %57 = getelementptr inbounds %struct.map, %struct.map* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %47, %38
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.map*, %struct.map** %11, align 8
  %61 = call %struct.map* @map__next(%struct.map* %60)
  store %struct.map* %61, %struct.map** %11, align 8
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.machine*, %struct.machine** %4, align 8
  %67 = getelementptr inbounds %struct.machine, %struct.machine* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %62
  store i32 0, i32* %3, align 4
  br label %120

71:                                               ; preds = %65
  %72 = load %struct.dso*, %struct.dso** %5, align 8
  %73 = call i64 @find_entry_trampoline(%struct.dso* %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %120

77:                                               ; preds = %71
  %78 = load %struct.machine*, %struct.machine** %4, align 8
  %79 = call i32 @machine__nr_cpus_avail(%struct.machine* %78)
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %113, %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load i64, i64* @X86_64_CPU_ENTRY_AREA_PER_CPU, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @X86_64_CPU_ENTRY_AREA_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = load i64, i64* @X86_64_ENTRY_TRAMPOLINE, align 8
  %92 = add nsw i64 %90, %91
  store i64 %92, i64* %15, align 8
  %93 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %16, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %16, i32 0, i32 1
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %94, align 8
  %96 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %16, i32 0, i32 2
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @page_size, align 8
  %99 = add nsw i64 %97, %98
  store i64 %99, i64* %96, align 8
  %100 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %16, i32 0, i32 3
  %101 = load i64, i64* %15, align 8
  store i64 %101, i64* %100, align 8
  %102 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %16, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ENTRY_TRAMPOLINE_NAME, align 4
  %105 = load i32, i32* @KMAP_NAME_LEN, align 4
  %106 = call i32 @strlcpy(i32 %103, i32 %104, i32 %105)
  %107 = load %struct.machine*, %struct.machine** %4, align 8
  %108 = load %struct.dso*, %struct.dso** %5, align 8
  %109 = call i64 @machine__create_extra_kernel_map(%struct.machine* %107, %struct.dso* %108, %struct.extra_kernel_map* %16)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %120

112:                                              ; preds = %84
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %80

116:                                              ; preds = %80
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.machine*, %struct.machine** %4, align 8
  %119 = getelementptr inbounds %struct.machine, %struct.machine* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %111, %76, %70
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local %struct.kmap* @__map__kmap(%struct.map*) #1

declare dso_local i32 @is_entry_trampoline(i32) #1

declare dso_local %struct.map* @map_groups__find(%struct.map_groups*, i32) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

declare dso_local i64 @find_entry_trampoline(%struct.dso*) #1

declare dso_local i32 @machine__nr_cpus_avail(%struct.machine*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @machine__create_extra_kernel_map(%struct.machine*, %struct.dso*, %struct.extra_kernel_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
