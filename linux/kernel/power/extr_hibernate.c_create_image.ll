; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_create_image.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_create_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMSG_FREEZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Some devices failed to power down, aborting hibernation\0A\00", align 1
@TEST_PLATFORM = common dso_local global i32 0, align 4
@TEST_CPUS = common dso_local global i32 0, align 4
@SYSTEM_SUSPEND = common dso_local global i32 0, align 4
@system_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Some system devices failed to power down, aborting hibernation\0A\00", align 1
@TEST_CORE = common dso_local global i32 0, align 4
@in_suspend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"machine_suspend\00", align 1
@PM_EVENT_HIBERNATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Error %d creating hibernation image\0A\00", align 1
@events_check_enabled = common dso_local global i32 0, align 4
@SYSTEM_RUNNING = common dso_local global i32 0, align 4
@PMSG_RECOVER = common dso_local global i32 0, align 4
@PMSG_THAW = common dso_local global i32 0, align 4
@PMSG_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_image(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @PMSG_FREEZE, align 4
  %6 = call i32 @dpm_suspend_end(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %102

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @platform_pre_snapshot(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @TEST_PLATFORM, align 4
  %19 = call i64 @hibernation_test(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %12
  br label %82

22:                                               ; preds = %17
  %23 = call i32 (...) @suspend_disable_secondary_cpus()
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @TEST_CPUS, align 4
  %28 = call i64 @hibernation_test(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %75

31:                                               ; preds = %26
  %32 = call i32 (...) @local_irq_disable()
  %33 = load i32, i32* @SYSTEM_SUSPEND, align 4
  store i32 %33, i32* @system_state, align 4
  %34 = call i32 (...) @syscore_suspend()
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %72

39:                                               ; preds = %31
  %40 = load i32, i32* @TEST_CORE, align 4
  %41 = call i64 @hibernation_test(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @pm_wakeup_pending()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %39
  br label %70

47:                                               ; preds = %43
  store i32 1, i32* @in_suspend, align 4
  %48 = call i32 (...) @save_processor_state()
  %49 = call i32 @TPS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @PM_EVENT_HIBERNATE, align 4
  %51 = call i32 @trace_suspend_resume(i32 %49, i32 %50, i32 1)
  %52 = call i32 (...) @swsusp_arch_suspend()
  store i32 %52, i32* %4, align 4
  %53 = call i32 (...) @restore_processor_state()
  %54 = call i32 @TPS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @PM_EVENT_HIBERNATE, align 4
  %56 = call i32 @trace_suspend_resume(i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i32, i32* @in_suspend, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  store i32 0, i32* @events_check_enabled, align 4
  %66 = call i32 (...) @clear_free_pages()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @platform_leave(i32 %68)
  br label %70

70:                                               ; preds = %67, %46
  %71 = call i32 (...) @syscore_resume()
  br label %72

72:                                               ; preds = %70, %37
  %73 = load i32, i32* @SYSTEM_RUNNING, align 4
  store i32 %73, i32* @system_state, align 4
  %74 = call i32 (...) @local_irq_enable()
  br label %75

75:                                               ; preds = %72, %30
  %76 = call i32 (...) @suspend_enable_secondary_cpus()
  %77 = load i32, i32* @in_suspend, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = call i32 (...) @arch_resume_nosmt()
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %21
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @platform_finish(i32 %83)
  %85 = load i32, i32* @in_suspend, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @PMSG_RECOVER, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @PMSG_THAW, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  br label %98

96:                                               ; preds = %82
  %97 = load i32, i32* @PMSG_RESTORE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @dpm_resume_start(i32 %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %9
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @dpm_suspend_end(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_pre_snapshot(i32) #1

declare dso_local i64 @hibernation_test(i32) #1

declare dso_local i32 @suspend_disable_secondary_cpus(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @syscore_suspend(...) #1

declare dso_local i64 @pm_wakeup_pending(...) #1

declare dso_local i32 @save_processor_state(...) #1

declare dso_local i32 @trace_suspend_resume(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @swsusp_arch_suspend(...) #1

declare dso_local i32 @restore_processor_state(...) #1

declare dso_local i32 @clear_free_pages(...) #1

declare dso_local i32 @platform_leave(i32) #1

declare dso_local i32 @syscore_resume(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @suspend_enable_secondary_cpus(...) #1

declare dso_local i32 @arch_resume_nosmt(...) #1

declare dso_local i32 @platform_finish(i32) #1

declare dso_local i32 @dpm_resume_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
