; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_smart_set_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_smart_set_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_intel_smart_set_threshold = type { i64 }
%struct.nd_intel_smart_threshold = type { i32 }
%struct.nd_intel_smart = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_intel_smart_set_threshold*, i32, %struct.nd_intel_smart_threshold*, %struct.nd_intel_smart*, %struct.device*, %struct.device*)* @nfit_test_cmd_smart_set_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_smart_set_threshold(%struct.nd_intel_smart_set_threshold* %0, i32 %1, %struct.nd_intel_smart_threshold* %2, %struct.nd_intel_smart* %3, %struct.device* %4, %struct.device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_intel_smart_set_threshold*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nd_intel_smart_threshold*, align 8
  %11 = alloca %struct.nd_intel_smart*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store %struct.nd_intel_smart_set_threshold* %0, %struct.nd_intel_smart_set_threshold** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nd_intel_smart_threshold* %2, %struct.nd_intel_smart_threshold** %10, align 8
  store %struct.nd_intel_smart* %3, %struct.nd_intel_smart** %11, align 8
  store %struct.device* %4, %struct.device** %12, align 8
  store %struct.device* %5, %struct.device** %13, align 8
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %14, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %35

21:                                               ; preds = %6
  %22 = load %struct.nd_intel_smart_threshold*, %struct.nd_intel_smart_threshold** %10, align 8
  %23 = getelementptr inbounds %struct.nd_intel_smart_threshold, %struct.nd_intel_smart_threshold* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nd_intel_smart_set_threshold*, %struct.nd_intel_smart_set_threshold** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @memcpy(i32 %24, %struct.nd_intel_smart_set_threshold* %25, i32 %26)
  %28 = load %struct.nd_intel_smart_set_threshold*, %struct.nd_intel_smart_set_threshold** %8, align 8
  %29 = getelementptr inbounds %struct.nd_intel_smart_set_threshold, %struct.nd_intel_smart_set_threshold* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.device*, %struct.device** %12, align 8
  %31 = load %struct.device*, %struct.device** %13, align 8
  %32 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %33 = load %struct.nd_intel_smart_threshold*, %struct.nd_intel_smart_threshold** %10, align 8
  %34 = call i32 @smart_notify(%struct.device* %30, %struct.device* %31, %struct.nd_intel_smart* %32, %struct.nd_intel_smart_threshold* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %21, %18
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @memcpy(i32, %struct.nd_intel_smart_set_threshold*, i32) #1

declare dso_local i32 @smart_notify(%struct.device*, %struct.device*, %struct.nd_intel_smart*, %struct.nd_intel_smart_threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
