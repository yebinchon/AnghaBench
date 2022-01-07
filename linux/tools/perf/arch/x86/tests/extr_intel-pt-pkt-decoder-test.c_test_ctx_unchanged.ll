; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_test_ctx_unchanged.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_test_ctx_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32 }
%struct.intel_pt_pkt = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Packet context changed!\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*, %struct.intel_pt_pkt*, i32)* @test_ctx_unchanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ctx_unchanged(%struct.test_data* %0, %struct.intel_pt_pkt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_data*, align 8
  %6 = alloca %struct.intel_pt_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_data* %0, %struct.test_data** %5, align 8
  store %struct.intel_pt_pkt* %1, %struct.intel_pt_pkt** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %11 = call i32 @intel_pt_upd_pkt_ctx(%struct.intel_pt_pkt* %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.test_data*, %struct.test_data** %5, align 8
  %17 = call i32 @decoding_failed(%struct.test_data* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @TEST_FAIL, align 4
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @TEST_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @intel_pt_upd_pkt_ctx(%struct.intel_pt_pkt*, i32*) #1

declare dso_local i32 @decoding_failed(%struct.test_data*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
