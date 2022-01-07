; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_fail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.intel_pt_pkt = type { i32, i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Expected length: %d   Decoded length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected type: %d   Decoded type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Expected count: %d   Decoded count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Expected payload: 0x%llx   Decoded payload 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Expected packet context: %d   Decoded packet context %d\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*, %struct.intel_pt_pkt*, i32, i32)* @fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fail(%struct.test_data* %0, %struct.intel_pt_pkt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.test_data*, align 8
  %6 = alloca %struct.intel_pt_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_data* %0, %struct.test_data** %5, align 8
  store %struct.intel_pt_pkt* %1, %struct.intel_pt_pkt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.test_data*, %struct.test_data** %5, align 8
  %10 = call i32 @decoding_failed(%struct.test_data* %9)
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.test_data*, %struct.test_data** %5, align 8
  %13 = getelementptr inbounds %struct.test_data, %struct.test_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.test_data*, %struct.test_data** %5, align 8
  %18 = getelementptr inbounds %struct.test_data, %struct.test_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %4
  %24 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %25 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.test_data*, %struct.test_data** %5, align 8
  %28 = getelementptr inbounds %struct.test_data, %struct.test_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.test_data*, %struct.test_data** %5, align 8
  %34 = getelementptr inbounds %struct.test_data, %struct.test_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %39 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %23
  %43 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %44 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.test_data*, %struct.test_data** %5, align 8
  %47 = getelementptr inbounds %struct.test_data, %struct.test_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load %struct.test_data*, %struct.test_data** %5, align 8
  %53 = getelementptr inbounds %struct.test_data, %struct.test_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %58 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %51, %42
  %62 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %63 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.test_data*, %struct.test_data** %5, align 8
  %66 = getelementptr inbounds %struct.test_data, %struct.test_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.test_data*, %struct.test_data** %5, align 8
  %72 = getelementptr inbounds %struct.test_data, %struct.test_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %6, align 8
  %76 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %78)
  br label %80

80:                                               ; preds = %70, %61
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.test_data*, %struct.test_data** %5, align 8
  %83 = getelementptr inbounds %struct.test_data, %struct.test_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.test_data*, %struct.test_data** %5, align 8
  %88 = getelementptr inbounds %struct.test_data, %struct.test_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %80
  %94 = load i32, i32* @TEST_FAIL, align 4
  ret i32 %94
}

declare dso_local i32 @decoding_failed(%struct.test_data*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
