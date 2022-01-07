; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_bpf_perf_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_bpf_perf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32 }

@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SAMPLE_FREQ = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CPU_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1D = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_BPU = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MISS = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Test HW_CPU_CYCLES\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Test SW_CPU_CLOCK\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Test HW_CACHE_L1D\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Test HW_CACHE_BPU\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Test Instruction Retired\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Test Lock Load\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"*** PASS ***\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bpf_perf_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bpf_perf_event() #0 {
  %1 = alloca %struct.perf_event_attr, align 4
  %2 = alloca %struct.perf_event_attr, align 4
  %3 = alloca %struct.perf_event_attr, align 4
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca %struct.perf_event_attr, align 4
  %6 = alloca %struct.perf_event_attr, align 4
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 1
  %9 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 4
  %13 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 5
  %15 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 1
  %18 = load i32, i32* @PERF_COUNT_SW_CPU_CLOCK, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 4
  %22 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 5
  %24 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  %27 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %28 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  store i32 %33, i32* %26, align 4
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 4
  %37 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 5
  %39 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %42 = load i32, i32* @PERF_COUNT_HW_CACHE_BPU, align 4
  %43 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %42, %44
  %46 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %45, %47
  store i32 %48, i32* %41, align 4
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 4
  %52 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 5
  %54 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 1
  store i32 192, i32* %56, align 4
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 4
  %60 = load i32, i32* @PERF_TYPE_RAW, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 5
  %62 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 1
  store i32 8656, i32* %64, align 4
  %65 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 2
  store i32 2, i32* %65, align 4
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 3
  %67 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 4
  %69 = load i32, i32* @PERF_TYPE_RAW, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 5
  %71 = load i32, i32* @SAMPLE_FREQ, align 4
  store i32 %71, i32* %70, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %1)
  %74 = call i32 @test_perf_event_task(%struct.perf_event_attr* %1)
  %75 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %2)
  %77 = call i32 @test_perf_event_task(%struct.perf_event_attr* %2)
  %78 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %3)
  %80 = call i32 @test_perf_event_task(%struct.perf_event_attr* %3)
  %81 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %82 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %4)
  %83 = call i32 @test_perf_event_task(%struct.perf_event_attr* %4)
  %84 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %5)
  %86 = call i32 @test_perf_event_task(%struct.perf_event_attr* %5)
  %87 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 @test_perf_event_all_cpu(%struct.perf_event_attr* %6)
  %89 = call i32 @test_perf_event_task(%struct.perf_event_attr* %6)
  %90 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @test_perf_event_all_cpu(%struct.perf_event_attr*) #1

declare dso_local i32 @test_perf_event_task(%struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
