; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_setup_period.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_setup_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i64, i32, i32, i32 }

@INTEL_PT_PERIOD_TICKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*)* @intel_pt_setup_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_setup_period(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %2, align 8
  %4 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %5 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTEL_PT_PERIOD_TICKS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @intel_pt_lower_power_of_2(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %18 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @intel_pt_lower_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
