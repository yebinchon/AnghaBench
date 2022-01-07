; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_part_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_part_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i8*, i64 }

@INTEL_PT_PSB_LEN = common dso_local global i32 0, align 4
@INTEL_PT_PSB_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_part_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_part_psb(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %6 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @INTEL_PT_PSB_LEN, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %39

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* @INTEL_PT_PSB_STR, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @memcmp(i8* %30, i32 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %5, align 8
  br label %16

42:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
