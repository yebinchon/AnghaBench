; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_bep.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_bep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_BEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.intel_pt_pkt*)* @intel_pt_get_bep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_bep(i64 %0, %struct.intel_pt_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_pt_pkt*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.intel_pt_pkt* %1, %struct.intel_pt_pkt** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %9, i32* %3, align 4
  br label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @INTEL_PT_BEP, align 4
  %12 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %13 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  store i32 2, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
