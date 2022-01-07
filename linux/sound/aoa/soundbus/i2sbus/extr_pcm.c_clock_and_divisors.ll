; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_clock_and_divisors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_clock_and_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2S_CLOCK_SPEED_18MHz = common dso_local global i32 0, align 4
@I2S_SF_CLOCK_SOURCE_18MHz = common dso_local global i32 0, align 4
@I2S_CLOCK_SPEED_45MHz = common dso_local global i32 0, align 4
@I2S_SF_CLOCK_SOURCE_45MHz = common dso_local global i32 0, align 4
@I2S_CLOCK_SPEED_49MHz = common dso_local global i32 0, align 4
@I2S_SF_CLOCK_SOURCE_49MHz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @clock_and_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_and_divisors(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = srem i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %90

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %16, %17
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @i2s_sf_sclkdiv(i32 %18, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %90

23:                                               ; preds = %15
  %24 = load i32, i32* @I2S_CLOCK_SPEED_18MHz, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  %28 = srem i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load i32, i32* @I2S_CLOCK_SPEED_18MHz, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %31, %34
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @i2s_sf_mclkdiv(i32 %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @I2S_SF_CLOCK_SOURCE_18MHz, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %90

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* @I2S_CLOCK_SPEED_45MHz, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = srem i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i32, i32* @I2S_CLOCK_SPEED_45MHz, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %53, %56
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @i2s_sf_mclkdiv(i32 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @I2S_SF_CLOCK_SOURCE_45MHz, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %90

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* @I2S_CLOCK_SPEED_49MHz, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = srem i32 %68, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i32, i32* @I2S_CLOCK_SPEED_49MHz, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %75, %78
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @i2s_sf_mclkdiv(i32 %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @I2S_SF_CLOCK_SOURCE_49MHz, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %90

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %67
  store i32 -1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %83, %61, %39, %22, %14
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @i2s_sf_sclkdiv(i32, i32*) #1

declare dso_local i32 @i2s_sf_mclkdiv(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
