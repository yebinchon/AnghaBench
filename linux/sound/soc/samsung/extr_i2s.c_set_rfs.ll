; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_set_rfs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_set_rfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.samsung_i2s_priv* }
%struct.samsung_i2s_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@I2SMOD = common dso_local global i64 0, align 8
@EXYNOS7_MOD_RCLK_192FS = common dso_local global i32 0, align 4
@EXYNOS7_MOD_RCLK_96FS = common dso_local global i32 0, align 4
@EXYNOS7_MOD_RCLK_128FS = common dso_local global i32 0, align 4
@EXYNOS7_MOD_RCLK_64FS = common dso_local global i32 0, align 4
@MOD_RCLK_768FS = common dso_local global i32 0, align 4
@MOD_RCLK_512FS = common dso_local global i32 0, align 4
@MOD_RCLK_384FS = common dso_local global i32 0, align 4
@MOD_RCLK_256FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2s_dai*, i32)* @set_rfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rfs(%struct.i2s_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_i2s_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %9 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %8, i32 0, i32 0
  %10 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %9, align 8
  store %struct.samsung_i2s_priv* %10, %struct.samsung_i2s_priv** %5, align 8
  %11 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %12 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I2SMOD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %18 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %23 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %75 [
    i32 192, label %33
    i32 96, label %39
    i32 128, label %45
    i32 64, label %51
    i32 768, label %57
    i32 512, label %63
    i32 384, label %69
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @EXYNOS7_MOD_RCLK_192FS, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %81

39:                                               ; preds = %2
  %40 = load i32, i32* @EXYNOS7_MOD_RCLK_96FS, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %81

45:                                               ; preds = %2
  %46 = load i32, i32* @EXYNOS7_MOD_RCLK_128FS, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %81

51:                                               ; preds = %2
  %52 = load i32, i32* @EXYNOS7_MOD_RCLK_64FS, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %81

57:                                               ; preds = %2
  %58 = load i32, i32* @MOD_RCLK_768FS, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %81

63:                                               ; preds = %2
  %64 = load i32, i32* @MOD_RCLK_512FS, align 4
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %81

69:                                               ; preds = %2
  %70 = load i32, i32* @MOD_RCLK_384FS, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %81

75:                                               ; preds = %2
  %76 = load i32, i32* @MOD_RCLK_256FS, align 4
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %69, %63, %57, %51, %45, %39, %33
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %84 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @I2SMOD, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
