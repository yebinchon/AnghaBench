; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-bts.c_intel_bts_alloc_snapshot_refs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-bts.c_intel_bts_alloc_snapshot_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts_recording = type { i32, %struct.intel_bts_snapshot_ref* }
%struct.intel_bts_snapshot_ref = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts_recording*, i32)* @intel_bts_alloc_snapshot_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_alloc_snapshot_refs(%struct.intel_bts_recording* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts_recording*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_bts_snapshot_ref*, align 8
  store %struct.intel_bts_recording* %0, %struct.intel_bts_recording** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 4, i64* %6, align 8
  %10 = load %struct.intel_bts_recording*, %struct.intel_bts_recording** %4, align 8
  %11 = getelementptr inbounds %struct.intel_bts_recording, %struct.intel_bts_recording* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 16, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %2
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %8, align 4
  br label %19

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.intel_bts_snapshot_ref* @calloc(i32 %27, i64 4)
  store %struct.intel_bts_snapshot_ref* %28, %struct.intel_bts_snapshot_ref** %9, align 8
  %29 = load %struct.intel_bts_snapshot_ref*, %struct.intel_bts_snapshot_ref** %9, align 8
  %30 = icmp ne %struct.intel_bts_snapshot_ref* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.intel_bts_snapshot_ref*, %struct.intel_bts_snapshot_ref** %9, align 8
  %36 = load %struct.intel_bts_recording*, %struct.intel_bts_recording** %4, align 8
  %37 = getelementptr inbounds %struct.intel_bts_recording, %struct.intel_bts_recording* %36, i32 0, i32 1
  %38 = load %struct.intel_bts_snapshot_ref*, %struct.intel_bts_snapshot_ref** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(%struct.intel_bts_snapshot_ref* %35, %struct.intel_bts_snapshot_ref* %38, i32 %42)
  %44 = load %struct.intel_bts_snapshot_ref*, %struct.intel_bts_snapshot_ref** %9, align 8
  %45 = load %struct.intel_bts_recording*, %struct.intel_bts_recording** %4, align 8
  %46 = getelementptr inbounds %struct.intel_bts_recording, %struct.intel_bts_recording* %45, i32 0, i32 1
  store %struct.intel_bts_snapshot_ref* %44, %struct.intel_bts_snapshot_ref** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.intel_bts_recording*, %struct.intel_bts_recording** %4, align 8
  %49 = getelementptr inbounds %struct.intel_bts_recording, %struct.intel_bts_recording* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.intel_bts_snapshot_ref* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.intel_bts_snapshot_ref*, %struct.intel_bts_snapshot_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
