; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_i2s = type { i32, i32, i32 }

@SUN4I_I2S_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_SDO_EN_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_GL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sun4i_i2s_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sun4i_i2s*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.sun4i_i2s* @dev_get_drvdata(%struct.device* %4)
  store %struct.sun4i_i2s* %5, %struct.sun4i_i2s** %3, align 8
  %6 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %3, align 8
  %7 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_disable_unprepare(i32 %8)
  %10 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %3, align 8
  %11 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %14 = load i32, i32* @SUN4I_I2S_CTRL_SDO_EN_MASK, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %3, align 8
  %17 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %20 = load i32, i32* @SUN4I_I2S_CTRL_GL_EN, align 4
  %21 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %3, align 8
  %23 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regcache_cache_only(i32 %24, i32 1)
  %26 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %3, align 8
  %27 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  ret i32 0
}

declare dso_local %struct.sun4i_i2s* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
