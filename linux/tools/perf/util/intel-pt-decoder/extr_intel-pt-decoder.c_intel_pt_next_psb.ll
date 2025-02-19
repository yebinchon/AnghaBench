; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_PT_PSB_STR = common dso_local global i32 0, align 4
@INTEL_PT_PSB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @intel_pt_next_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_next_psb(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @INTEL_PT_PSB_STR, align 4
  %12 = load i32, i32* @INTEL_PT_PSB_LEN, align 4
  %13 = call i8* @memmem(i8* %8, i64 %10, i32 %11, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8**, i8*** %4, align 8
  store i8* %26, i8** %27, align 8
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i8* @memmem(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
