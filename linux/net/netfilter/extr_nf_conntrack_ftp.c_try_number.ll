; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_number.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_try_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Char %u (got %u nums) `%u' unexpected\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to fill %u numbers separated by %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i32, i8, i8)* @try_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_number(i8* %0, i64 %1, i64* %2, i32 %3, i8 signext %4, i8 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  %16 = load i64*, i64** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i64* %16, i32 0, i32 %20)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %22

22:                                               ; preds = %97, %6
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* %14, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %102

33:                                               ; preds = %31
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %47, 10
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i64
  %52 = add i64 %48, %51
  %53 = sub i64 %52, 48
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  br label %96

57:                                               ; preds = %38, %33
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %12, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  br label %95

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %13, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i8, i8* %13, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74, %67
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* %15, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %106

86:                                               ; preds = %77, %74
  %87 = load i64, i64* %15, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %14, align 8
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = call i32 (i8*, i32, i8, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %88, i8 signext %90, i32 %93)
  store i32 0, i32* %7, align 4
  br label %106

95:                                               ; preds = %64
  br label %96

96:                                               ; preds = %95, %43
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %15, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %15, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  br label %22

102:                                              ; preds = %31
  %103 = load i32, i32* %11, align 4
  %104 = load i8, i8* %12, align 1
  %105 = call i32 (i8*, i32, i8, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8 signext %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %86, %83
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
