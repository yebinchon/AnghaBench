; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_snapshot_ref_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_snapshot_ref_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_recording = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_pt_recording*, i64)* @intel_pt_snapshot_ref_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pt_snapshot_ref_buf_size(%struct.intel_pt_recording* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.intel_pt_recording*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.intel_pt_recording* %0, %struct.intel_pt_recording** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 262144, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %4, align 8
  %10 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 65536
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %4, align 8
  %16 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %4, align 8
  %19 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @intel_pt_psb_period(i32 %17, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %8, align 8
  %26 = mul i64 %25, 2
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 262144
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i64 262144, i64* %7, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  br label %50

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.intel_pt_recording*, %struct.intel_pt_recording** %4, align 8
  %42 = getelementptr inbounds %struct.intel_pt_recording, %struct.intel_pt_recording* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i64 0, i64* %3, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %47, %38, %13
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @intel_pt_psb_period(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
