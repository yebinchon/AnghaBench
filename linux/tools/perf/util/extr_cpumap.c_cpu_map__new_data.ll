; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__new_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__new_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }
%struct.perf_record_cpu_map_data = type { i64, i64 }
%struct.cpu_map_entries = type { i32 }
%struct.perf_record_record_cpu_map = type { i32 }

@PERF_CPU_MAP__CPUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_cpu_map* @cpu_map__new_data(%struct.perf_record_cpu_map_data* %0) #0 {
  %2 = alloca %struct.perf_cpu_map*, align 8
  %3 = alloca %struct.perf_record_cpu_map_data*, align 8
  store %struct.perf_record_cpu_map_data* %0, %struct.perf_record_cpu_map_data** %3, align 8
  %4 = load %struct.perf_record_cpu_map_data*, %struct.perf_record_cpu_map_data** %3, align 8
  %5 = getelementptr inbounds %struct.perf_record_cpu_map_data, %struct.perf_record_cpu_map_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PERF_CPU_MAP__CPUS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.perf_record_cpu_map_data*, %struct.perf_record_cpu_map_data** %3, align 8
  %11 = getelementptr inbounds %struct.perf_record_cpu_map_data, %struct.perf_record_cpu_map_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpu_map_entries*
  %14 = call %struct.perf_cpu_map* @cpu_map__from_entries(%struct.cpu_map_entries* %13)
  store %struct.perf_cpu_map* %14, %struct.perf_cpu_map** %2, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.perf_record_cpu_map_data*, %struct.perf_record_cpu_map_data** %3, align 8
  %17 = getelementptr inbounds %struct.perf_record_cpu_map_data, %struct.perf_record_cpu_map_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.perf_record_record_cpu_map*
  %20 = call %struct.perf_cpu_map* @cpu_map__from_mask(%struct.perf_record_record_cpu_map* %19)
  store %struct.perf_cpu_map* %20, %struct.perf_cpu_map** %2, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  ret %struct.perf_cpu_map* %22
}

declare dso_local %struct.perf_cpu_map* @cpu_map__from_entries(%struct.cpu_map_entries*) #1

declare dso_local %struct.perf_cpu_map* @cpu_map__from_mask(%struct.perf_record_record_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
