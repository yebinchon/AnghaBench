; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-rust.c_is_prefixed_hash.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_demangle-rust.c_is_prefixed_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_prefix = common dso_local global i32 0, align 4
@hash_prefix_len = common dso_local global i32 0, align 4
@hash_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_prefixed_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_prefixed_hash(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @hash_prefix, align 4
  %10 = load i32, i32* @hash_prefix_len, align 4
  %11 = call i64 @strncmp(i8* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* @hash_prefix_len, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %3, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 64)
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @hash_len, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %67, %14
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %44
  store i32 1, i32* %45, align 4
  br label %66

46:                                               ; preds = %34, %29
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 97
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 102
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 97
  %61 = add nsw i32 %60, 10
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %62
  store i32 1, i32* %63, align 4
  br label %65

64:                                               ; preds = %51, %46
  store i32 0, i32* %2, align 4
  br label %95

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %25

70:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i64, i64* %6, align 8
  %73 = icmp ult i64 %72, 16
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %87, 5
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %90, 15
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %64, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
