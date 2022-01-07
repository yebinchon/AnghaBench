; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_cyc_to_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_calc_cyc_to_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_pt_calc_cyc_to_tsc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@intel_pt_calc_cyc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_decoder*, i32)* @intel_pt_calc_cyc_to_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_calc_cyc_to_tsc(%struct.intel_pt_decoder* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_calc_cyc_to_tsc_info, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 2
  %10 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 3
  %14 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 4
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 5
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 6
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 7
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 8
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 9
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.intel_pt_calc_cyc_to_tsc_info, %struct.intel_pt_calc_cyc_to_tsc_info* %5, i32 0, i32 10
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %44 = load i32, i32* @intel_pt_calc_cyc_cb, align 4
  %45 = call i32 @intel_pt_pkt_lookahead(%struct.intel_pt_decoder* %43, i32 %44, %struct.intel_pt_calc_cyc_to_tsc_info* %5)
  br label %46

46:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @intel_pt_pkt_lookahead(%struct.intel_pt_decoder*, i32, %struct.intel_pt_calc_cyc_to_tsc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
