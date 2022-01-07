; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp936.c_char2uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_cp936.c_char2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4
@page_charset2uni = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @char2uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char2uni(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  store i32 8364, i32* %27, align 4
  br label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %26
  store i32 1, i32* %4, align 4
  br label %80

35:                                               ; preds = %17
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %8, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %9, align 1
  %42 = load i32**, i32*** @page_charset2uni, align 8
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %35
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %80

66:                                               ; preds = %53
  store i32 2, i32* %11, align 4
  br label %78

67:                                               ; preds = %49, %35
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  store i32 8364, i32* %72, align 4
  br label %77

73:                                               ; preds = %67
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %71
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %63, %34, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
