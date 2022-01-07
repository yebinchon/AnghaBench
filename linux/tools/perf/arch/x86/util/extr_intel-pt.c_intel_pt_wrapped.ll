; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_wrapped.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_wrapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_recording = type { i32, %struct.intel_pt_snapshot_ref* }
%struct.intel_pt_snapshot_ref = type { i32, i32 }
%struct.auxtrace_mmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_recording*, i32, %struct.auxtrace_mmap*, i8*, i32)* @intel_pt_wrapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_wrapped(%struct.intel_pt_recording* %0, i32 %1, %struct.auxtrace_mmap* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_pt_recording*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_mmap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_pt_snapshot_ref*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_pt_recording* %0, %struct.intel_pt_recording** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.auxtrace_mmap* %2, %struct.auxtrace_mmap** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %6, align 8
  %14 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %13, i32 0, i32 1
  %15 = load %struct.intel_pt_snapshot_ref*, %struct.intel_pt_snapshot_ref** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.intel_pt_snapshot_ref, %struct.intel_pt_snapshot_ref* %15, i64 %17
  store %struct.intel_pt_snapshot_ref* %18, %struct.intel_pt_snapshot_ref** %11, align 8
  %19 = load %struct.intel_pt_snapshot_ref*, %struct.intel_pt_snapshot_ref** %11, align 8
  %20 = getelementptr inbounds %struct.intel_pt_snapshot_ref, %struct.intel_pt_snapshot_ref* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_pt_snapshot_ref*, %struct.intel_pt_snapshot_ref** %11, align 8
  %23 = getelementptr inbounds %struct.intel_pt_snapshot_ref, %struct.intel_pt_snapshot_ref* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %6, align 8
  %26 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %8, align 8
  %29 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @intel_pt_compare_ref(i32 %21, i32 %24, i32 %27, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_pt_snapshot_ref*, %struct.intel_pt_snapshot_ref** %11, align 8
  %35 = getelementptr inbounds %struct.intel_pt_snapshot_ref, %struct.intel_pt_snapshot_ref* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %6, align 8
  %38 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %8, align 8
  %41 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @intel_pt_copy_ref(i32 %36, i32 %39, i32 %42, i8* %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @intel_pt_compare_ref(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @intel_pt_copy_ref(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
