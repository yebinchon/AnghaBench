; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cpuidle_monitor = type { i32, i32, i32 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@amd_fam14h_monitor = common dso_local global %struct.cpuidle_monitor zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"Fam_14h\00", align 1
@MONITOR_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Fam_12h\00", align 1
@AMD_FAM14H_STATE_NUM = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@previous_count = common dso_local global i8** null, align 8
@current_count = common dso_local global i8** null, align 8
@pci_acc = common dso_local global i32* null, align 8
@amd_fam14h_pci_dev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpuidle_monitor* @amd_fam14h_register() #0 {
  %1 = alloca %struct.cpuidle_monitor*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %4 = load i64, i64* @X86_VENDOR_AMD, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %64

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @amd_fam14h_monitor, i32 0, i32 1), align 4
  %12 = load i64, i64* @MONITOR_NAME_LEN, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @strncpy(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %25

15:                                               ; preds = %7
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 1), align 8
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @amd_fam14h_monitor, i32 0, i32 1), align 4
  %20 = load i64, i64* @MONITOR_NAME_LEN, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @strncpy(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %24

23:                                               ; preds = %15
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %64

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %10
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @AMD_FAM14H_STATE_NUM, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* @cpu_count, align 4
  %33 = call i8* @calloc(i32 %32, i32 8)
  %34 = load i8**, i8*** @previous_count, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* @cpu_count, align 4
  %39 = call i8* @calloc(i32 %38, i32 8)
  %40 = load i8**, i8*** @current_count, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %26

47:                                               ; preds = %26
  %48 = call i32* @pci_slot_func_init(i32** @pci_acc, i32 24, i32 6)
  store i32* %48, i32** @amd_fam14h_pci_dev, align 8
  %49 = load i32*, i32** @amd_fam14h_pci_dev, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** @pci_acc, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %47
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %64

55:                                               ; preds = %51
  %56 = call i32 (...) @is_nbp1_capable()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @AMD_FAM14H_STATE_NUM, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @amd_fam14h_monitor, i32 0, i32 0), align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @amd_fam14h_monitor, i32 0, i32 1), align 4
  %63 = call i32 @strlen(i32 %62)
  store i32 %63, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @amd_fam14h_monitor, i32 0, i32 2), align 4
  store %struct.cpuidle_monitor* @amd_fam14h_monitor, %struct.cpuidle_monitor** %1, align 8
  br label %64

64:                                               ; preds = %61, %54, %23, %6
  %65 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %1, align 8
  ret %struct.cpuidle_monitor* %65
}

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32* @pci_slot_func_init(i32**, i32, i32) #1

declare dso_local i32 @is_nbp1_capable(...) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
