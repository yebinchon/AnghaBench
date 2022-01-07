; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex6_user.c_test_bpf_perf_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex6_user.c_test_bpf_perf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CPU_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1D = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_LL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MISS = common dso_local global i32 0, align 4
@__const.test_bpf_perf_event.attr_msr_tsc = private unnamed_addr constant %struct.perf_event_attr { i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"HARDWARE-cycles\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SOFTWARE-clock\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RAW-instruction-retired\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HW_CACHE-L1D-load\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"HW_CACHE-LLC-miss\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Dynamic-msr-tsc\00", align 1
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
  %8 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 1
  %10 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 4
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 5
  %15 = load i32, i32* @SAMPLE_PERIOD, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 6
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 0
  %18 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 1
  %20 = load i32, i32* @PERF_COUNT_SW_CPU_CLOCK, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 5
  %25 = load i32, i32* @SAMPLE_PERIOD, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 6
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  %28 = load i32, i32* @PERF_TYPE_RAW, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 1
  store i32 192, i32* %29, align 4
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 5
  %34 = load i32, i32* @SAMPLE_PERIOD, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 6
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  %37 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %39 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %40 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %42, %44
  store i32 %45, i32* %38, align 4
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 5
  %50 = load i32, i32* @SAMPLE_PERIOD, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 6
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  %53 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 1
  %55 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %56 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %55, %57
  %59 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  store i32 %61, i32* %54, align 4
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 4
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 5
  %66 = load i32, i32* @SAMPLE_PERIOD, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 6
  store i32 0, i32* %67, align 4
  %68 = bitcast %struct.perf_event_attr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast (%struct.perf_event_attr* @__const.test_bpf_perf_event.attr_msr_tsc to i8*), i64 28, i1 false)
  %69 = call i32 @test_perf_event_array(%struct.perf_event_attr* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @test_perf_event_array(%struct.perf_event_attr* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @test_perf_event_array(%struct.perf_event_attr* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @test_perf_event_array(%struct.perf_event_attr* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 @test_perf_event_array(%struct.perf_event_attr* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @test_perf_event_array(%struct.perf_event_attr* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_perf_event_array(%struct.perf_event_attr*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
