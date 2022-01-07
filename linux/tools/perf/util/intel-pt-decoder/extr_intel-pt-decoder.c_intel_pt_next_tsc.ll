; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i64, i32 }

@INTEL_PT_NO_CTX = common dso_local global i32 0, align 4
@INTEL_PT_TSC = common dso_local global i64 0, align 8
@INTEL_PT_PSBEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64*)* @intel_pt_next_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_next_tsc(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_pt_pkt, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @INTEL_PT_NO_CTX, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %41, %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @intel_pt_get_packet(i8* %18, i64 %19, %struct.intel_pt_pkt* %11, i32* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %51

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INTEL_PT_TSC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %11, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  store i32 1, i32* %5, align 4
  br label %51

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %11, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTEL_PT_PSBEND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %14

50:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %40, %29, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @intel_pt_get_packet(i8*, i64, %struct.intel_pt_pkt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
