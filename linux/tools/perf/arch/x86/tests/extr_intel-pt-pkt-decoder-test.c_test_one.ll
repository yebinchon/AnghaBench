; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_test_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_test_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.intel_pt_pkt = type { i64, i64, i64 }

@INTEL_PT_PKT_MAX_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"intel_pt_get_packet returned %d\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@INTEL_PT_NO_CTX = common dso_local global i32 0, align 4
@INTEL_PT_BLK_4_CTX = common dso_local global i32 0, align 4
@INTEL_PT_BLK_8_CTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Decoded ok:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_data*)* @test_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_one(%struct.test_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_data*, align 8
  %4 = alloca %struct.intel_pt_pkt, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.test_data* %0, %struct.test_data** %3, align 8
  %8 = load %struct.test_data*, %struct.test_data** %3, align 8
  %9 = getelementptr inbounds %struct.test_data, %struct.test_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = call i32 @memset(%struct.intel_pt_pkt* %4, i32 255, i32 24)
  %12 = load %struct.test_data*, %struct.test_data** %3, align 8
  %13 = getelementptr inbounds %struct.test_data, %struct.test_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.test_data*, %struct.test_data** %3, align 8
  %16 = getelementptr inbounds %struct.test_data, %struct.test_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @intel_pt_get_packet(i32 %14, i32 %17, %struct.intel_pt_pkt* %4, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @INTEL_PT_PKT_MAX_SZ, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %1
  %26 = load %struct.test_data*, %struct.test_data** %3, align 8
  %27 = call i32 @decoding_failed(%struct.test_data* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @TEST_FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %114

31:                                               ; preds = %21
  %32 = load %struct.test_data*, %struct.test_data** %3, align 8
  %33 = getelementptr inbounds %struct.test_data, %struct.test_data* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.test_data*, %struct.test_data** %3, align 8
  %38 = load i32, i32* @INTEL_PT_NO_CTX, align 4
  %39 = call i32 @test_ctx_unchanged(%struct.test_data* %37, %struct.intel_pt_pkt* %4, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %114

44:                                               ; preds = %36
  %45 = load %struct.test_data*, %struct.test_data** %3, align 8
  %46 = load i32, i32* @INTEL_PT_BLK_4_CTX, align 4
  %47 = call i32 @test_ctx_unchanged(%struct.test_data* %45, %struct.intel_pt_pkt* %4, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %114

52:                                               ; preds = %44
  %53 = load %struct.test_data*, %struct.test_data** %3, align 8
  %54 = load i32, i32* @INTEL_PT_BLK_8_CTX, align 4
  %55 = call i32 @test_ctx_unchanged(%struct.test_data* %53, %struct.intel_pt_pkt* %4, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %114

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.test_data*, %struct.test_data** %3, align 8
  %64 = getelementptr inbounds %struct.test_data, %struct.test_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %97, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.test_data*, %struct.test_data** %3, align 8
  %71 = getelementptr inbounds %struct.test_data, %struct.test_data* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %4, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.test_data*, %struct.test_data** %3, align 8
  %79 = getelementptr inbounds %struct.test_data, %struct.test_data* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.intel_pt_pkt, %struct.intel_pt_pkt* %4, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.test_data*, %struct.test_data** %3, align 8
  %87 = getelementptr inbounds %struct.test_data, %struct.test_data* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.test_data*, %struct.test_data** %3, align 8
  %94 = getelementptr inbounds %struct.test_data, %struct.test_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %83, %75, %67, %61
  %98 = load %struct.test_data*, %struct.test_data** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @fail(%struct.test_data* %98, %struct.intel_pt_pkt* %4, i32 %99, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %114

102:                                              ; preds = %91
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.test_data*, %struct.test_data** %3, align 8
  %105 = getelementptr inbounds %struct.test_data, %struct.test_data* %104, i32 0, i32 4
  %106 = load %struct.test_data*, %struct.test_data** %3, align 8
  %107 = getelementptr inbounds %struct.test_data, %struct.test_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.test_data*, %struct.test_data** %3, align 8
  %110 = getelementptr inbounds %struct.test_data, %struct.test_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dump_packet(%struct.TYPE_2__* %105, i32 %108, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %102, %97, %58, %50, %42, %25
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @memset(%struct.intel_pt_pkt*, i32, i32) #1

declare dso_local i32 @intel_pt_get_packet(i32, i32, %struct.intel_pt_pkt*, i32*) #1

declare dso_local i32 @decoding_failed(%struct.test_data*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @test_ctx_unchanged(%struct.test_data*, %struct.intel_pt_pkt*, i32) #1

declare dso_local i32 @fail(%struct.test_data*, %struct.intel_pt_pkt*, i32, i32) #1

declare dso_local i32 @dump_packet(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
