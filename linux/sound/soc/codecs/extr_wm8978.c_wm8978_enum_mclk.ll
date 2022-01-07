; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8978.c_wm8978_enum_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8978.c_wm8978_enum_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mclk_numerator = common dso_local global i32* null, align 8
@mclk_denominator = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @wm8978_enum_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8978_enum_mclk(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %45, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** @mclk_numerator, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 4, %16
  %18 = load i32*, i32** @mclk_numerator, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %17, %22
  %24 = load i32*, i32** @mclk_denominator, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = udiv i32 %23, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 3, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %15
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul i32 13, %36
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = udiv i32 %40, 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %34, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
