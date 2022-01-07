; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_load_policy.c_tomoyo_load_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_load_policy.c_tomoyo_load_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tomoyo_load_policy.done = internal global i32 0, align 4
@tomoyo_policy_loaded = common dso_local global i64 0, align 8
@tomoyo_trigger = common dso_local global i64 0, align 8
@CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Calling %s to load policy. Please wait.\0A\00", align 1
@tomoyo_loader = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@UMH_WAIT_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tomoyo_load_policy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [3 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @tomoyo_policy_loaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @tomoyo_load_policy.done, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %43

11:                                               ; preds = %7
  %12 = load i64, i64* @tomoyo_trigger, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER, align 8
  store i64 %15, i64* @tomoyo_trigger, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* @tomoyo_trigger, align 8
  %19 = call i64 @strcmp(i8* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  %23 = call i32 (...) @tomoyo_policy_loader_exists()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %43

26:                                               ; preds = %22
  store i32 1, i32* @tomoyo_load_policy.done, align 4
  %27 = load i64, i64* @tomoyo_loader, align 8
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @tomoyo_loader, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8* %30, i8** %31, align 16
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  store i8* null, i8** %32, align 8
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  store i8* null, i8** %35, align 16
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %40 = load i32, i32* @UMH_WAIT_PROC, align 4
  %41 = call i32 @call_usermodehelper(i8* %37, i8** %38, i8** %39, i32 %40)
  %42 = call i32 (...) @tomoyo_check_profile()
  br label %43

43:                                               ; preds = %26, %25, %21, %10
  ret void
}

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @tomoyo_policy_loader_exists(...) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

declare dso_local i32 @tomoyo_check_profile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
