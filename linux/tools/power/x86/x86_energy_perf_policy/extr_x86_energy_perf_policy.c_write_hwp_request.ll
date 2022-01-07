; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_write_hwp_request.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_write_hwp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i32, i32, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"cpu%d: requesting min %d max %d des %d epp %d window 0x%0x use_pkg %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_hwp_request(i32 %0, %struct.msr_hwp_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msr_hwp_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msr_hwp_request* %1, %struct.msr_hwp_request** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @debug, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %13 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %16 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %19 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %22 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %25 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %28 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %10, %3
  %32 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %33 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ratio_2_msr_perf(i32 %34)
  %36 = call i64 @HWP_MIN_PERF(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %40 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ratio_2_msr_perf(i32 %41)
  %43 = call i64 @HWP_MAX_PERF(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %47 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ratio_2_msr_perf(i32 %48)
  %50 = call i64 @HWP_DESIRED_PERF(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %54 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @HWP_ENERGY_PERF_PREFERENCE(i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %60 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @HWP_ACTIVITY_WINDOW(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %66 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @HWP_PACKAGE_CONTROL(i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @put_msr(i32 %71, i32 %72, i64 %73)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HWP_MIN_PERF(i32) #1

declare dso_local i32 @ratio_2_msr_perf(i32) #1

declare dso_local i64 @HWP_MAX_PERF(i32) #1

declare dso_local i64 @HWP_DESIRED_PERF(i32) #1

declare dso_local i64 @HWP_ENERGY_PERF_PREFERENCE(i32) #1

declare dso_local i64 @HWP_ACTIVITY_WINDOW(i32) #1

declare dso_local i64 @HWP_PACKAGE_CONTROL(i32) #1

declare dso_local i32 @put_msr(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
