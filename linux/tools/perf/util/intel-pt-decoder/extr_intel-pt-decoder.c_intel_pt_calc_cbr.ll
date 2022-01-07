; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_cbr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_calc_cbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_calc_cbr(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %4 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %5 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %34

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %24 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %26 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = udiv i32 %27, %28
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %33 = call i32 @intel_pt_mtc_cyc_cnt_cbr(%struct.intel_pt_decoder* %32)
  br label %34

34:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @intel_pt_mtc_cyc_cnt_cbr(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
