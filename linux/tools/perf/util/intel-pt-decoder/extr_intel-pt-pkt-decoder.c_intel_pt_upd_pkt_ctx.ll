; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_upd_pkt_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-pkt-decoder.c_intel_pt_upd_pkt_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32, i32 }

@INTEL_PT_NO_CTX = common dso_local global i32 0, align 4
@INTEL_PT_BLK_4_CTX = common dso_local global i32 0, align 4
@INTEL_PT_BLK_8_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pt_upd_pkt_ctx(%struct.intel_pt_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.intel_pt_pkt*, align 8
  %4 = alloca i32*, align 8
  store %struct.intel_pt_pkt* %0, %struct.intel_pt_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 159, label %8
    i32 143, label %8
    i32 129, label %8
    i32 132, label %8
    i32 146, label %8
    i32 150, label %8
    i32 153, label %8
    i32 154, label %8
    i32 149, label %8
    i32 152, label %8
    i32 151, label %8
    i32 137, label %8
    i32 136, label %8
    i32 155, label %8
    i32 131, label %9
    i32 135, label %9
    i32 134, label %9
    i32 133, label %9
    i32 148, label %9
    i32 147, label %9
    i32 142, label %9
    i32 144, label %9
    i32 128, label %9
    i32 130, label %9
    i32 141, label %9
    i32 140, label %9
    i32 139, label %9
    i32 138, label %9
    i32 145, label %9
    i32 157, label %9
    i32 156, label %9
    i32 158, label %12
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %25

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* @INTEL_PT_NO_CTX, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @INTEL_PT_BLK_4_CTX, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @INTEL_PT_BLK_8_CTX, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %23, %9, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
