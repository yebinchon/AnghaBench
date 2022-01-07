; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/extr_bitmap.c_bitmap_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/extr_bitmap.c_bitmap_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bitmap_scnprintf(i64* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @find_first_bit(i64* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %75, %36, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @find_next_bit(i64* %23, i32 %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp sle i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %17

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub i64 %44, %45
  %47 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %43, i64 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %40, %37
  store i32 0, i32* %12, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = sub i64 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %53, i64 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %13, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %50
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub i64 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %67, i64 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %64, %50
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %10, align 4
  br label %17

77:                                               ; preds = %17
  %78 = load i64, i64* %13, align 8
  ret i64 %78
}

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
