; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_resume_store.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_resume_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@swsusp_resume_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Configured resume from disk to %u\0A\00", align 1
@noresume = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @resume_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resume_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %17, %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kstrndup(i8* %30, i32 %31, i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %57

39:                                               ; preds = %29
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @name_to_dev_t(i8* %40)
  store i64 %41, i64* %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %57

49:                                               ; preds = %39
  %50 = call i32 (...) @lock_system_sleep()
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* @swsusp_resume_device, align 8
  %52 = call i32 (...) @unlock_system_sleep()
  %53 = load i64, i64* @swsusp_resume_device, align 8
  %54 = call i32 @pm_pr_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %53)
  store i64 0, i64* @noresume, align 8
  %55 = call i32 (...) @software_resume()
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %49, %46, %36
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i64 @name_to_dev_t(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i32 @unlock_system_sleep(...) #1

declare dso_local i32 @pm_pr_dbg(i8*, i64) #1

declare dso_local i32 @software_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
