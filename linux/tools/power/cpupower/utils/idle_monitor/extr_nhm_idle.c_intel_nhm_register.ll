; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_intel_nhm_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_nhm_idle.c_intel_nhm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cpuidle_monitor = type { i32, i32 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@CPUPOWER_CAP_INV_TSC = common dso_local global i32 0, align 4
@CPUPOWER_CAP_APERF = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@is_valid = common dso_local global i8* null, align 8
@NHM_CSTATE_COUNT = common dso_local global i32 0, align 4
@previous_count = common dso_local global i8** null, align 8
@current_count = common dso_local global i8** null, align 8
@intel_nhm_monitor = common dso_local global %struct.cpuidle_monitor zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpuidle_monitor* @intel_nhm_register() #0 {
  %1 = alloca %struct.cpuidle_monitor*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %4 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %45

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %9 = load i32, i32* @CPUPOWER_CAP_INV_TSC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %45

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %15 = load i32, i32* @CPUPOWER_CAP_APERF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %45

19:                                               ; preds = %13
  %20 = load i32, i32* @cpu_count, align 4
  %21 = call i8* @calloc(i32 %20, i32 4)
  store i8* %21, i8** @is_valid, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %39, %19
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @NHM_CSTATE_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* @cpu_count, align 4
  %28 = call i8* @calloc(i32 %27, i32 8)
  %29 = load i8**, i8*** @previous_count, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* @cpu_count, align 4
  %34 = call i8* @calloc(i32 %33, i32 8)
  %35 = load i8**, i8*** @current_count, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @intel_nhm_monitor, i32 0, i32 0), align 4
  %44 = call i32 @strlen(i32 %43)
  store i32 %44, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @intel_nhm_monitor, i32 0, i32 1), align 4
  store %struct.cpuidle_monitor* @intel_nhm_monitor, %struct.cpuidle_monitor** %1, align 8
  br label %45

45:                                               ; preds = %42, %18, %12, %6
  %46 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %1, align 8
  ret %struct.cpuidle_monitor* %46
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
