; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_fix_up_intel_idle_driver_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_fix_up_intel_idle_driver_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NHM-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SNB-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ATM-\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"C4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_up_intel_idle_driver_name(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %19 [
    i32 1, label %10
    i32 2, label %13
    i32 3, label %16
  ]

10:                                               ; preds = %8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %19

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %19

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %8, %16, %13, %10
  br label %60

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %38 [
    i32 1, label %26
    i32 2, label %29
    i32 3, label %32
    i32 4, label %35
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %38

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %38

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %38

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %38

38:                                               ; preds = %24, %35, %32, %29, %26
  br label %59

39:                                               ; preds = %20
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %57 [
    i32 1, label %45
    i32 2, label %48
    i32 3, label %51
    i32 4, label %54
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strcpy(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %57

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @strcpy(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %57

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %57

54:                                               ; preds = %43
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %43, %54, %51, %48, %45
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %38
  br label %60

60:                                               ; preds = %59, %19
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
