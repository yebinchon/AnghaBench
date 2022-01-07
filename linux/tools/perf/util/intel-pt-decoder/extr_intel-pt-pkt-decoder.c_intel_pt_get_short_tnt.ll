; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_short_tnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_get_short_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32, i32 }

@INTEL_PT_TNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intel_pt_pkt*)* @intel_pt_get_short_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_short_tnt(i32 %0, %struct.intel_pt_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt_pkt*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.intel_pt_pkt* %1, %struct.intel_pt_pkt** %4, align 8
  store i32 6, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @BIT(i32 7)
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %14, %6
  %22 = load i32, i32* @INTEL_PT_TNT, align 4
  %23 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %4, align 8
  %24 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %4, align 8
  %27 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 57
  %30 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %4, align 8
  %31 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret i32 1
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
