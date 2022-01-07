; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_init_maxfreq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_init_maxfreq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUPOWER_CAP_INV_TSC = common dso_local global i32 0, align 4
@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@MSR_AMD_HWCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TSC read 0x%x failed - assume TSC working\0A\00", align 1
@MAX_FREQ_TSC_REF = common dso_local global i32 0, align 4
@max_freq_mode = common dso_local global i32 0, align 4
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@max_frequency = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot retrieve max freq from cpufreq kernel subsystem\0A\00", align 1
@MAX_FREQ_SYSFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_maxfreq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_maxfreq_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %6 = load i32, i32* @CPUPOWER_CAP_INV_TSC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %44

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %12 = load i64, i64* @X86_VENDOR_AMD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %16 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @MSR_AMD_HWCR, align 4
  %20 = call i32 @read_msr(i32 0, i32 %19, i64* %3)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSR_AMD_HWCR, align 4
  %25 = call i32 (i8*, ...) @dprint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %1, align 4
  br label %53

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = lshr i64 %27, 24
  %29 = and i64 1, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @MAX_FREQ_TSC_REF, align 4
  store i32 %32, i32* @max_freq_mode, align 4
  store i32 0, i32* %1, align 4
  br label %53

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %43

36:                                               ; preds = %14
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %38 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MAX_FREQ_TSC_REF, align 4
  store i32 %41, i32* @max_freq_mode, align 4
  store i32 0, i32* %1, align 4
  br label %53

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %9
  %45 = call i64 @cpufreq_get_hardware_limits(i32 0, i64* %4, i32* @max_frequency)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @dprint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @MAX_FREQ_SYSFS, align 4
  store i32 %50, i32* @max_freq_mode, align 4
  %51 = load i32, i32* @max_frequency, align 4
  %52 = sdiv i32 %51, 1000
  store i32 %52, i32* @max_frequency, align 4
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %47, %40, %31, %23
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @read_msr(i32, i32, i64*) #1

declare dso_local i32 @dprint(i8*, ...) #1

declare dso_local i64 @cpufreq_get_hardware_limits(i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
