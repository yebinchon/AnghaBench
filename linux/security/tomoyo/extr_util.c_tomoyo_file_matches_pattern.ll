; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_file_matches_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_file_matches_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @tomoyo_file_matches_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_file_matches_pattern(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %14

14:                                               ; preds = %50, %31, %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = icmp ult i8* %15, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 92
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  br label %14

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -2
  %38 = call i32 @tomoyo_file_matches_pattern2(i8* %33, i8* %34, i8* %35, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %69

50:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %10, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @tomoyo_file_matches_pattern2(i8* %53, i8* %54, i8* %55, i8* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  br label %67

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ %61, %60 ], [ %66, %62 ]
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %49
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @tomoyo_file_matches_pattern2(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
