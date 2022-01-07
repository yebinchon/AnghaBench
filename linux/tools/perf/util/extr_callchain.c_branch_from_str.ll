; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_branch_from_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_branch_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"avg_cycles\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32, i32)* @branch_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_from_str(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %15, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i64 @count_pri64_printf(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %31, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %24, %7
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i64 @count_pri64_printf(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %59, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 @count_pri64_printf(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %76, i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %52, %46
  br label %86

86:                                               ; preds = %85, %43, %40
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i64 @scnprintf(i8* %93, i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %89, %86
  %103 = load i32, i32* %15, align 4
  ret i32 %103
}

declare dso_local i64 @count_pri64_printf(i32, i8*, i32, i8*, i32) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
