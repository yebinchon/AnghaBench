; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_load_data.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_load_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ima_appraise = common dso_local global i32 0, align 4
@IMA_APPRAISE_ENFORCE = common dso_local global i32 0, align 4
@CONFIG_KEXEC_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@IMA_APPRAISE_KEXEC = common dso_local global i32 0, align 4
@IMA_APPRAISE_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Prevent firmware sysfs fallback loading.\0A\00", align 1
@IMA_APPRAISE_MODULES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"impossible to appraise a module without a file descriptor. sig_enforce kernel parameter might help\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_load_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @ima_appraise, align 4
  %7 = load i32, i32* @IMA_APPRAISE_ENFORCE, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @IMA_APPRAISE_ENFORCE, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %67 [
    i32 129, label %13
    i32 130, label %37
    i32 128, label %50
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @CONFIG_KEXEC_SIG, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call i32 (...) @arch_ima_get_secureboot()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %17, %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* @ima_appraise, align 4
  %29 = load i32, i32* @IMA_APPRAISE_KEXEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %27, %24
  br label %68

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @ima_appraise, align 4
  %42 = load i32, i32* @IMA_APPRAISE_FIRMWARE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %69

49:                                               ; preds = %40, %37
  br label %68

50:                                               ; preds = %1
  %51 = call i32 (...) @is_module_sig_enforced()
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @ima_appraise, align 4
  %59 = load i32, i32* @IMA_APPRAISE_MODULES, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %57, %54, %50
  br label %67

67:                                               ; preds = %1, %66
  br label %68

68:                                               ; preds = %67, %49, %36
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %45, %32, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @arch_ima_get_secureboot(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @is_module_sig_enforced(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
