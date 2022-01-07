; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_next_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_pt_decoder*)* @intel_pt_next_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pt_next_sample(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intel_pt_decoder*, align 8
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %4 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %5 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %19 [
    i32 131, label %7
    i32 128, label %15
    i32 129, label %18
    i32 130, label %18
  ]

7:                                                ; preds = %1
  %8 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %2, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %17 = call i64 @intel_pt_next_period(%struct.intel_pt_decoder* %16)
  store i64 %17, i64* %2, align 8
  br label %20

18:                                               ; preds = %1, %1
  br label %19

19:                                               ; preds = %1, %18
  store i64 0, i64* %2, align 8
  br label %20

20:                                               ; preds = %19, %15, %7
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i64 @intel_pt_next_period(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
