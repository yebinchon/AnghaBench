; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_cyc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32 }

@INTEL_PT_BAD_PACKET = common dso_local global i32 0, align 4
@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_CYC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_cyc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_cyc(i32 %0, i8* %1, i64 %2, %struct.intel_pt_pkt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_pt_pkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.intel_pt_pkt* %3, %struct.intel_pt_pkt** %9, align 8
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = lshr i32 %13, 3
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 2
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  store i64 %18, i64* %8, align 8
  store i32 5, i32* %11, align 4
  br label %19

19:                                               ; preds = %49, %4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ugt i32 %24, 9
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @INTEL_PT_BAD_PACKET, align 4
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %34, i32* %5, align 4
  br label %60

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, 7
  store i32 %51, i32* %11, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i32, i32* @INTEL_PT_CYC, align 4
  %54 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %9, align 8
  %55 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %9, align 8
  %58 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %33, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
