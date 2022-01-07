; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_callchain.c_get_callchain_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_callchain.c_get_callchain_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry = type opaque
%struct.callchain_cpus_entries = type { i64* }

@callchain_recursion = common dso_local global i32 0, align 4
@callchain_cpus_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_callchain_entry* (i32*)* @get_callchain_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_callchain_entry* @get_callchain_entry(i32* %0) #0 {
  %2 = alloca %struct.perf_callchain_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.callchain_cpus_entries*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @callchain_recursion, align 4
  %7 = call i32 @this_cpu_ptr(i32 %6)
  %8 = call i32 @get_recursion_context(i32 %7)
  %9 = load i32*, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.perf_callchain_entry* null, %struct.perf_callchain_entry** %2, align 8
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @callchain_cpus_entries, align 4
  %16 = call %struct.callchain_cpus_entries* @rcu_dereference(i32 %15)
  store %struct.callchain_cpus_entries* %16, %struct.callchain_cpus_entries** %5, align 8
  %17 = load %struct.callchain_cpus_entries*, %struct.callchain_cpus_entries** %5, align 8
  %18 = icmp ne %struct.callchain_cpus_entries* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.perf_callchain_entry* null, %struct.perf_callchain_entry** %2, align 8
  br label %37

20:                                               ; preds = %14
  %21 = call i32 (...) @smp_processor_id()
  store i32 %21, i32* %4, align 4
  %22 = load %struct.callchain_cpus_entries*, %struct.callchain_cpus_entries** %5, align 8
  %23 = getelementptr inbounds %struct.callchain_cpus_entries, %struct.callchain_cpus_entries* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (...) @perf_callchain_entry__sizeof()
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %29, i64 %34
  %36 = bitcast i8* %35 to %struct.perf_callchain_entry*
  store %struct.perf_callchain_entry* %36, %struct.perf_callchain_entry** %2, align 8
  br label %37

37:                                               ; preds = %20, %19, %13
  %38 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %2, align 8
  ret %struct.perf_callchain_entry* %38
}

declare dso_local i32 @get_recursion_context(i32) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local %struct.callchain_cpus_entries* @rcu_dereference(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @perf_callchain_entry__sizeof(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
