; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_enable_dsp_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_enable_dsp_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5514_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5514_priv*)* @rt5514_enable_dsp_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5514_enable_dsp_prepare(%struct.rt5514_priv* %0) #0 {
  %2 = alloca %struct.rt5514_priv*, align 8
  store %struct.rt5514_priv* %0, %struct.rt5514_priv** %2, align 8
  %3 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %4 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @regmap_write(i32 %5, i32 402661376, i32 4332)
  %7 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %8 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @regmap_write(i32 %9, i32 402661888, i32 165380)
  %11 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %12 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_write(i32 %13, i32 -84215046, i32 1)
  %15 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %16 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_write(i32 %17, i32 402665216, i32 348491)
  %19 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %20 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_write(i32 %21, i32 402665216, i32 348489)
  %23 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %24 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_write(i32 %25, i32 -84215046, i32 0)
  %27 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_write(i32 %29, i32 402661488, i32 64)
  %31 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %32 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_write(i32 %33, i32 402661952, i32 10)
  %35 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %36 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regmap_write(i32 %37, i32 402661632, i32 11)
  %39 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %40 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(i32 %41, i32 402661380, i32 8424321)
  %43 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %44 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_write(i32 %45, i32 402665224, i32 5)
  %47 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %48 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regmap_write(i32 %49, i32 402657556, i32 1)
  %51 = load %struct.rt5514_priv*, %struct.rt5514_priv** %2, align 8
  %52 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_write(i32 %53, i32 402657560, i32 1)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
