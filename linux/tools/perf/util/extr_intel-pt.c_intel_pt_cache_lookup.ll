; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_cache_entry = type { i32 }
%struct.dso = type { i32 }
%struct.machine = type { i32 }
%struct.auxtrace_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_pt_cache_entry* (%struct.dso*, %struct.machine*, i32)* @intel_pt_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_pt_cache_entry* @intel_pt_cache_lookup(%struct.dso* %0, %struct.machine* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_pt_cache_entry*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_cache*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.machine* %1, %struct.machine** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dso*, %struct.dso** %5, align 8
  %10 = load %struct.machine*, %struct.machine** %6, align 8
  %11 = call %struct.auxtrace_cache* @intel_pt_cache(%struct.dso* %9, %struct.machine* %10)
  store %struct.auxtrace_cache* %11, %struct.auxtrace_cache** %8, align 8
  %12 = load %struct.auxtrace_cache*, %struct.auxtrace_cache** %8, align 8
  %13 = icmp ne %struct.auxtrace_cache* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.intel_pt_cache_entry* null, %struct.intel_pt_cache_entry** %4, align 8
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.dso*, %struct.dso** %5, align 8
  %17 = getelementptr inbounds %struct.dso, %struct.dso* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.intel_pt_cache_entry* @auxtrace_cache__lookup(i32 %18, i32 %19)
  store %struct.intel_pt_cache_entry* %20, %struct.intel_pt_cache_entry** %4, align 8
  br label %21

21:                                               ; preds = %15, %14
  %22 = load %struct.intel_pt_cache_entry*, %struct.intel_pt_cache_entry** %4, align 8
  ret %struct.intel_pt_cache_entry* %22
}

declare dso_local %struct.auxtrace_cache* @intel_pt_cache(%struct.dso*, %struct.machine*) #1

declare dso_local %struct.intel_pt_cache_entry* @auxtrace_cache__lookup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
