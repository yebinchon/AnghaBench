; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_misc.c_cpufreq_has_boost_support.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_misc.c_cpufreq_has_boost_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpupower_cpu_info = type { i32 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPUPOWER_CAP_AMD_CBP = common dso_local global i32 0, align 4
@MSR_AMD_HWCR = common dso_local global i32 0, align 4
@CPUPOWER_AMD_CPBDIS = common dso_local global i64 0, align 8
@CPUPOWER_CAP_INTEL_IDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_has_boost_support(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cpupower_cpu_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = call i32 @get_cpu_info(%struct.cpupower_cpu_info* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 4
  %23 = load i32, i32* @CPUPOWER_CAP_AMD_CBP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cpupower_cpu_info, %struct.cpupower_cpu_info* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 24
  br i1 %34, label %35, label %49

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MSR_AMD_HWCR, align 4
  %38 = call i32 @read_msr(i32 %36, i32 %37, i64* %12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @CPUPOWER_AMD_CPBDIS, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %40
  br label %48

48:                                               ; preds = %47, %35
  br label %58

49:                                               ; preds = %31
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @amd_pci_get_num_boost_states(i32* %50, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %69

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %48
  br label %68

59:                                               ; preds = %21
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 4
  %61 = load i32, i32* @CPUPOWER_CAP_INTEL_IDA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  store i32 1, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %58
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %55, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @get_cpu_info(%struct.cpupower_cpu_info*) #1

declare dso_local i32 @read_msr(i32, i32, i64*) #1

declare dso_local i32 @amd_pci_get_num_boost_states(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
