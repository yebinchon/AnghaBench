; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_string.c_perf_atoll.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_string.c_perf_atoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__fallthrough = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_atoll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @isdigit(i8 signext %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strtoll(i8* %14, i8** %5, i32 10)
  store i32 %15, i32* %4, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %6, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %29 [
    i32 98, label %20
    i32 66, label %20
    i32 0, label %27
    i32 107, label %30
    i32 75, label %30
    i32 109, label %33
    i32 77, label %33
    i32 103, label %36
    i32 71, label %36
    i32 116, label %39
    i32 84, label %39
  ]

20:                                               ; preds = %13, %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %60

25:                                               ; preds = %20
  %26 = load i32, i32* @__fallthrough, align 4
  br label %27

27:                                               ; preds = %13, %25
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %13
  br label %60

30:                                               ; preds = %13, %13
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 10
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %13, %13
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 20
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %13, %13
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 %37, 30
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %13, %13
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %36, %33, %30
  %43 = load i8, i8* %6, align 1
  %44 = call i64 @islower(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %60

51:                                               ; preds = %46
  br label %58

52:                                               ; preds = %42
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %60

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %56, %50, %29, %24, %12
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %58, %27
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
