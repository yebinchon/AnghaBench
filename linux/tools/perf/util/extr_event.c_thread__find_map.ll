; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__find_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 (%struct.map*, i32)* }
%struct.thread = type { %struct.map_groups* }
%struct.map_groups = type { %struct.machine* }
%struct.machine = type { %struct.map_groups }
%struct.addr_location = type { i32, i8, %struct.map*, i32, i64, %struct.thread*, %struct.machine* }

@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@perf_host = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i64 0, align 8
@HIST_FILTER__GUEST = common dso_local global i32 0, align 4
@HIST_FILTER__HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @thread__find_map(%struct.thread* %0, i64 %1, i32 %2, %struct.addr_location* %3) #0 {
  %5 = alloca %struct.map*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca %struct.map_groups*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.addr_location* %3, %struct.addr_location** %9, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.map_groups*, %struct.map_groups** %14, align 8
  store %struct.map_groups* %15, %struct.map_groups** %10, align 8
  %16 = load %struct.map_groups*, %struct.map_groups** %10, align 8
  %17 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %16, i32 0, i32 0
  %18 = load %struct.machine*, %struct.machine** %17, align 8
  store %struct.machine* %18, %struct.machine** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.machine*, %struct.machine** %11, align 8
  %20 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %21 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %20, i32 0, i32 6
  store %struct.machine* %19, %struct.machine** %21, align 8
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %24 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %23, i32 0, i32 5
  store %struct.thread* %22, %struct.thread** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %27 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %30 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %32 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.machine*, %struct.machine** %11, align 8
  %34 = icmp eq %struct.machine* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %37 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %36, i32 0, i32 2
  store %struct.map* null, %struct.map** %37, align 8
  store %struct.map* null, %struct.map** %5, align 8
  br label %165

38:                                               ; preds = %4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* @perf_host, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %47 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %46, i32 0, i32 1
  store i8 107, i8* %47, align 4
  %48 = load %struct.machine*, %struct.machine** %11, align 8
  %49 = getelementptr inbounds %struct.machine, %struct.machine* %48, i32 0, i32 0
  store %struct.map_groups* %49, %struct.map_groups** %10, align 8
  store i32 1, i32* %12, align 4
  br label %126

50:                                               ; preds = %42, %38
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* @perf_host, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %59 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %58, i32 0, i32 1
  store i8 46, i8* %59, align 4
  br label %125

60:                                               ; preds = %54, %50
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i64, i64* @perf_guest, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %68, i32 0, i32 1
  store i8 103, i8* %69, align 4
  %70 = load %struct.machine*, %struct.machine** %11, align 8
  %71 = getelementptr inbounds %struct.machine, %struct.machine* %70, i32 0, i32 0
  store %struct.map_groups* %71, %struct.map_groups** %10, align 8
  store i32 1, i32* %12, align 4
  br label %124

72:                                               ; preds = %64, %60
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i64, i64* @perf_guest, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %81 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %80, i32 0, i32 1
  store i8 117, i8* %81, align 4
  br label %123

82:                                               ; preds = %76, %72
  %83 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %84 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %83, i32 0, i32 1
  store i8 72, i8* %84, align 4
  %85 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %86 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %85, i32 0, i32 2
  store %struct.map* null, %struct.map** %86, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90, %82
  %95 = load i64, i64* @perf_guest, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @HIST_FILTER__GUEST, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %101 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %94, %90
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108, %104
  %113 = load i64, i64* @perf_host, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @HIST_FILTER__HOST, align 4
  %117 = shl i32 1, %116
  %118 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %119 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %112, %108
  store %struct.map* null, %struct.map** %5, align 8
  br label %165

123:                                              ; preds = %79
  br label %124

124:                                              ; preds = %123, %67
  br label %125

125:                                              ; preds = %124, %57
  br label %126

126:                                              ; preds = %125, %45
  %127 = load %struct.map_groups*, %struct.map_groups** %10, align 8
  %128 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %129 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.map* @map_groups__find(%struct.map_groups* %127, i32 %130)
  %132 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %133 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %132, i32 0, i32 2
  store %struct.map* %131, %struct.map** %133, align 8
  %134 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %135 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %134, i32 0, i32 2
  %136 = load %struct.map*, %struct.map** %135, align 8
  %137 = icmp ne %struct.map* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %143 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %142, i32 0, i32 2
  %144 = load %struct.map*, %struct.map** %143, align 8
  %145 = call i32 @map__load(%struct.map* %144)
  br label %146

146:                                              ; preds = %141, %138
  %147 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %148 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %147, i32 0, i32 2
  %149 = load %struct.map*, %struct.map** %148, align 8
  %150 = getelementptr inbounds %struct.map, %struct.map* %149, i32 0, i32 0
  %151 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %150, align 8
  %152 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %153 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %152, i32 0, i32 2
  %154 = load %struct.map*, %struct.map** %153, align 8
  %155 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %156 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %151(%struct.map* %154, i32 %157)
  %159 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %160 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %146, %126
  %162 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %163 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %162, i32 0, i32 2
  %164 = load %struct.map*, %struct.map** %163, align 8
  store %struct.map* %164, %struct.map** %5, align 8
  br label %165

165:                                              ; preds = %161, %122, %35
  %166 = load %struct.map*, %struct.map** %5, align 8
  ret %struct.map* %166
}

declare dso_local %struct.map* @map_groups__find(%struct.map_groups*, i32) #1

declare dso_local i32 @map__load(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
