; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_hsw_ext_idle.c_hsw_ext_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_hsw_ext_idle.c_hsw_ext_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.cpuidle_monitor = type { i32, i32 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_count = common dso_local global i32 0, align 4
@is_valid = common dso_local global i8* null, align 8
@HSW_EXT_CSTATE_COUNT = common dso_local global i32 0, align 4
@previous_count = common dso_local global i8** null, align 8
@current_count = common dso_local global i8** null, align 8
@intel_hsw_ext_monitor = common dso_local global %struct.cpuidle_monitor zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuidle_monitor* ()* @hsw_ext_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuidle_monitor* @hsw_ext_register() #0 {
  %1 = alloca %struct.cpuidle_monitor*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %4 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %8 = icmp ne i32 %7, 6
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %40

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 2), align 4
  switch i32 %11, label %13 [
    i32 69, label %12
  ]

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %40

14:                                               ; preds = %12
  %15 = load i32, i32* @cpu_count, align 4
  %16 = call i8* @calloc(i32 %15, i32 4)
  store i8* %16, i8** @is_valid, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %34, %14
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @HSW_EXT_CSTATE_COUNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* @cpu_count, align 4
  %23 = call i8* @calloc(i32 %22, i32 8)
  %24 = load i8**, i8*** @previous_count, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* @cpu_count, align 4
  %29 = call i8* @calloc(i32 %28, i32 8)
  %30 = load i8**, i8*** @current_count, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %29, i8** %33, align 8
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @intel_hsw_ext_monitor, i32 0, i32 0), align 4
  %39 = call i32 @strlen(i32 %38)
  store i32 %39, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @intel_hsw_ext_monitor, i32 0, i32 1), align 4
  store %struct.cpuidle_monitor* @intel_hsw_ext_monitor, %struct.cpuidle_monitor** %1, align 8
  br label %40

40:                                               ; preds = %37, %13, %9
  %41 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %1, align 8
  ret %struct.cpuidle_monitor* %41
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
