; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_try_decompose_hangul.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_try_decompose_hangul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Hangul_SBase = common dso_local global i32 0, align 4
@Hangul_SCount = common dso_local global i32 0, align 4
@Hangul_LBase = common dso_local global i32 0, align 4
@Hangul_NCount = common dso_local global i32 0, align 4
@Hangul_VBase = common dso_local global i32 0, align 4
@Hangul_TCount = common dso_local global i32 0, align 4
@Hangul_TBase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @hfsplus_try_decompose_hangul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_try_decompose_hangul(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @Hangul_SBase, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @Hangul_SCount, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %52

20:                                               ; preds = %15
  %21 = load i32, i32* @Hangul_LBase, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @Hangul_NCount, align 4
  %24 = sdiv i32 %22, %23
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @Hangul_VBase, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @Hangul_NCount, align 4
  %29 = srem i32 %27, %28
  %30 = load i32, i32* @Hangul_TCount, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @Hangul_TBase, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @Hangul_TCount, align 4
  %36 = srem i32 %34, %35
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @Hangul_TBase, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  store i32 3, i32* %3, align 4
  br label %52

51:                                               ; preds = %20
  store i32 2, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
