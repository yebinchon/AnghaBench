; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_pip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_pip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_PIP = common dso_local global i32 0, align 4
@NR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.intel_pt_pkt*)* @intel_pt_get_pip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_pip(i8* %0, i64 %1, %struct.intel_pt_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_pt_pkt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.intel_pt_pkt* %2, %struct.intel_pt_pkt** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %12, i32* %4, align 4
  br label %34

13:                                               ; preds = %3
  %14 = load i32, i32* @INTEL_PT_PIP, align 4
  %15 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = call i32 @memcpy_le64(i32* %8, i8* %18, i32 6)
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 1
  %22 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %23 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load i32, i32* @NR_FLAG, align 4
  %29 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %7, align 8
  %30 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %13
  store i32 8, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy_le64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
