; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_read_hwp_request.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_read_hwp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i64, i64, i64, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_hwp_request(i32 %0, %struct.msr_hwp_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msr_hwp_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msr_hwp_request* %1, %struct.msr_hwp_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @get_msr(i32 %8, i32 %9, i64* %7)
  %11 = load i64, i64* %7, align 8
  %12 = lshr i64 %11, 0
  %13 = and i64 %12, 255
  %14 = call i8* @msr_perf_2_ratio(i64 %13)
  %15 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %16 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = lshr i64 %17, 8
  %19 = and i64 %18, 255
  %20 = call i8* @msr_perf_2_ratio(i64 %19)
  %21 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %22 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = lshr i64 %23, 16
  %25 = and i64 %24, 255
  %26 = call i8* @msr_perf_2_ratio(i64 %25)
  %27 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %28 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = lshr i64 %29, 24
  %31 = and i64 %30, 255
  %32 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %33 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = lshr i64 %34, 32
  %36 = and i64 %35, 1023
  %37 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %38 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = lshr i64 %39, 42
  %41 = and i64 %40, 1
  %42 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %43 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i8* @msr_perf_2_ratio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
