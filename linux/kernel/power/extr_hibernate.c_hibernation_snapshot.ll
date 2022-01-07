; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_hibernation_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_hibernation_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_FREEZER = common dso_local global i32 0, align 4
@freezer_test_done = common dso_local global i32 0, align 4
@PMSG_FREEZE = common dso_local global i32 0, align 4
@PMSG_RECOVER = common dso_local global i32 0, align 4
@TEST_DEVICES = common dso_local global i32 0, align 4
@in_suspend = common dso_local global i64 0, align 8
@PMSG_THAW = common dso_local global i32 0, align 4
@PMSG_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibernation_snapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @pm_suspend_clear_flags()
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @platform_begin(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  %12 = call i32 (...) @hibernate_preallocate_memory()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %88

16:                                               ; preds = %11
  %17 = call i32 (...) @freeze_kernel_threads()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %94

21:                                               ; preds = %16
  %22 = load i32, i32* @TEST_FREEZER, align 4
  %23 = call i64 @hibernation_test(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* @freezer_test_done, align 4
  br label %92

26:                                               ; preds = %21
  %27 = load i32, i32* @PMSG_FREEZE, align 4
  %28 = call i32 @dpm_prepare(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @PMSG_RECOVER, align 4
  %33 = call i32 @dpm_complete(i32 %32)
  br label %92

34:                                               ; preds = %26
  %35 = call i32 (...) @suspend_console()
  %36 = call i32 (...) @pm_restrict_gfp_mask()
  %37 = load i32, i32* @PMSG_FREEZE, align 4
  %38 = call i32 @dpm_suspend(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @TEST_DEVICES, align 4
  %43 = call i64 @hibernation_test(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @platform_recover(i32 %46)
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @create_image(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* @in_suspend, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %51
  %58 = call i32 (...) @swsusp_free()
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i64, i64* @in_suspend, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @PMSG_RECOVER, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @PMSG_THAW, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @PMSG_RESTORE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @dpm_resume(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* @in_suspend, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79, %73
  %83 = call i32 (...) @pm_restore_gfp_mask()
  br label %84

84:                                               ; preds = %82, %79
  %85 = call i32 (...) @resume_console()
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @dpm_complete(i32 %86)
  br label %88

88:                                               ; preds = %94, %84, %15, %10
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @platform_end(i32 %89)
  %91 = load i32, i32* %4, align 4
  ret i32 %91

92:                                               ; preds = %31, %25
  %93 = call i32 (...) @thaw_kernel_threads()
  br label %94

94:                                               ; preds = %92, %20
  %95 = call i32 (...) @swsusp_free()
  br label %88
}

declare dso_local i32 @pm_suspend_clear_flags(...) #1

declare dso_local i32 @platform_begin(i32) #1

declare dso_local i32 @hibernate_preallocate_memory(...) #1

declare dso_local i32 @freeze_kernel_threads(...) #1

declare dso_local i64 @hibernation_test(i32) #1

declare dso_local i32 @dpm_prepare(i32) #1

declare dso_local i32 @dpm_complete(i32) #1

declare dso_local i32 @suspend_console(...) #1

declare dso_local i32 @pm_restrict_gfp_mask(...) #1

declare dso_local i32 @dpm_suspend(i32) #1

declare dso_local i32 @platform_recover(i32) #1

declare dso_local i32 @create_image(i32) #1

declare dso_local i32 @swsusp_free(...) #1

declare dso_local i32 @dpm_resume(i32) #1

declare dso_local i32 @pm_restore_gfp_mask(...) #1

declare dso_local i32 @resume_console(...) #1

declare dso_local i32 @platform_end(i32) #1

declare dso_local i32 @thaw_kernel_threads(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
