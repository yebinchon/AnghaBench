; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_mtc_cyc_cnt_upd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_mtc_cyc_cnt_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_mtc_cyc_cnt_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_mtc_cyc_cnt_upd(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %5 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %6 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %19 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %22 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %10
  br label %52

26:                                               ; preds = %17
  %27 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %28 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %36 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = mul nsw i64 %34, %37
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %40 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %51 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %9, %25, %48, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
