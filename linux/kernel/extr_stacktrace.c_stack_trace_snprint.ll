; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_stacktrace.c_stack_trace_snprint.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_stacktrace.c_stack_trace_snprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%*c%pS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stack_trace_snprint(i8* %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i1 [ false, %23 ], [ %29, %27 ]
  br i1 %31, label %32, label %68

32:                                               ; preds = %30
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 1, %35
  %37 = load i64*, i64** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36, i8 signext 32, i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %64

55:                                               ; preds = %32
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %55, %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %23

68:                                               ; preds = %30
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %21
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
