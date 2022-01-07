; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_set_bfs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_set_bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { %struct.TYPE_4__*, %struct.samsung_i2s_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.samsung_i2s_priv = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@I2SMOD = common dso_local global i64 0, align 8
@QUIRK_SUPPORTS_TDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported BCLK divider\0A\00", align 1
@MOD_BCLK_48FS = common dso_local global i32 0, align 4
@MOD_BCLK_32FS = common dso_local global i32 0, align 4
@MOD_BCLK_24FS = common dso_local global i32 0, align 4
@MOD_BCLK_16FS = common dso_local global i32 0, align 4
@EXYNOS5420_MOD_BCLK_64FS = common dso_local global i32 0, align 4
@EXYNOS5420_MOD_BCLK_96FS = common dso_local global i32 0, align 4
@EXYNOS5420_MOD_BCLK_128FS = common dso_local global i32 0, align 4
@EXYNOS5420_MOD_BCLK_192FS = common dso_local global i32 0, align 4
@EXYNOS5420_MOD_BCLK_256FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Wrong BCLK Divider!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2s_dai*, i32)* @set_bfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bfs(%struct.i2s_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.i2s_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_i2s_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2s_dai* %0, %struct.i2s_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %10 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %9, i32 0, i32 1
  %11 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %10, align 8
  store %struct.samsung_i2s_priv* %11, %struct.samsung_i2s_priv** %5, align 8
  %12 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %13 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @I2SMOD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %19 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QUIRK_SUPPORTS_TDM, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %24 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %31, 48
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %35 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %119

39:                                               ; preds = %30, %2
  %40 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %41 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  switch i32 %50, label %105 [
    i32 48, label %51
    i32 32, label %57
    i32 24, label %63
    i32 16, label %69
    i32 64, label %75
    i32 96, label %81
    i32 128, label %87
    i32 192, label %93
    i32 256, label %99
  ]

51:                                               ; preds = %39
  %52 = load i32, i32* @MOD_BCLK_48FS, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %111

57:                                               ; preds = %39
  %58 = load i32, i32* @MOD_BCLK_32FS, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %111

63:                                               ; preds = %39
  %64 = load i32, i32* @MOD_BCLK_24FS, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %111

69:                                               ; preds = %39
  %70 = load i32, i32* @MOD_BCLK_16FS, align 4
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %111

75:                                               ; preds = %39
  %76 = load i32, i32* @EXYNOS5420_MOD_BCLK_64FS, align 4
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %111

81:                                               ; preds = %39
  %82 = load i32, i32* @EXYNOS5420_MOD_BCLK_96FS, align 4
  %83 = load i32, i32* %8, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %111

87:                                               ; preds = %39
  %88 = load i32, i32* @EXYNOS5420_MOD_BCLK_128FS, align 4
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %111

93:                                               ; preds = %39
  %94 = load i32, i32* @EXYNOS5420_MOD_BCLK_192FS, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %111

99:                                               ; preds = %39
  %100 = load i32, i32* @EXYNOS5420_MOD_BCLK_256FS, align 4
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %111

105:                                              ; preds = %39
  %106 = load %struct.i2s_dai*, %struct.i2s_dai** %3, align 8
  %107 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %119

111:                                              ; preds = %99, %93, %87, %81, %75, %69, %63, %57, %51
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %114 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @I2SMOD, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  br label %119

119:                                              ; preds = %111, %105, %33
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
