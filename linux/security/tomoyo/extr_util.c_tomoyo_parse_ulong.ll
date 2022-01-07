; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_ulong.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_parse_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOMOYO_VALUE_TYPE_INVALID = common dso_local global i32 0, align 4
@TOMOYO_VALUE_TYPE_HEXADECIMAL = common dso_local global i32 0, align 4
@TOMOYO_VALUE_TYPE_OCTAL = common dso_local global i32 0, align 4
@TOMOYO_VALUE_TYPE_DECIMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_parse_ulong(i64* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i64* %0, i64** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  store i32 10, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %9, align 1
  %20 = load i8, i8* %9, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 88
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %16
  store i32 16, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %6, align 8
  br label %42

30:                                               ; preds = %23
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 55
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  store i32 8, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %38, %34, %30
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @simple_strtoul(i8* %44, i8** %7, i32 %45)
  %47 = load i64*, i64** %4, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @TOMOYO_VALUE_TYPE_INVALID, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %61 [
    i32 16, label %57
    i32 8, label %59
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @TOMOYO_VALUE_TYPE_HEXADECIMAL, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @TOMOYO_VALUE_TYPE_OCTAL, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @TOMOYO_VALUE_TYPE_DECIMAL, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %59, %57, %51
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
