; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_optimalTableLog_internal.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_fse_compress.c_FSE_optimalTableLog_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_DEFAULT_TABLELOG = common dso_local global i64 0, align 8
@FSE_MIN_TABLELOG = common dso_local global i64 0, align 8
@FSE_MAX_TABLELOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FSE_optimalTableLog_internal(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 1
  %14 = call i32 @BIT_highbit32(i64 %13)
  %15 = load i32, i32* %8, align 4
  %16 = sub i32 %14, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @FSE_minTableLog(i64 %20, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @FSE_DEFAULT_TABLELOG, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @FSE_MIN_TABLELOG, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @FSE_MIN_TABLELOG, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @FSE_MAX_TABLELOG, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @FSE_MAX_TABLELOG, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @BIT_highbit32(i64) #1

declare dso_local i64 @FSE_minTableLog(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
