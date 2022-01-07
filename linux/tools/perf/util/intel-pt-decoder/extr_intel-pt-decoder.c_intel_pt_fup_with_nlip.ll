; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_fup_with_nlip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_fup_with_nlip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i64 }
%struct.intel_pt_insn = type { i64, i64 }

@INTEL_PT_FUP_WITH_NLIP = common dso_local global i32 0, align 4
@INTEL_PT_BR_INDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*, %struct.intel_pt_insn*, i64, i32)* @intel_pt_fup_with_nlip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_fup_with_nlip(%struct.intel_pt_decoder* %0, %struct.intel_pt_insn* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_pt_decoder*, align 8
  %6 = alloca %struct.intel_pt_insn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %5, align 8
  store %struct.intel_pt_insn* %1, %struct.intel_pt_insn** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @INTEL_PT_FUP_WITH_NLIP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %20 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INTEL_PT_BR_INDIRECT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.intel_pt_insn*, %struct.intel_pt_insn** %6, align 8
  %30 = getelementptr inbounds %struct.intel_pt_insn, %struct.intel_pt_insn* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = icmp eq i64 %25, %32
  br label %34

34:                                               ; preds = %24, %18, %15, %4
  %35 = phi i1 [ false, %18 ], [ false, %15 ], [ false, %4 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
