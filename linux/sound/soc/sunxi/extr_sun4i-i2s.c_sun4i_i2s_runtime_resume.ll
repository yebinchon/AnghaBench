; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_i2s = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable bus clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to sync regmap cache\0A\00", align 1
@SUN4I_I2S_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_GL_EN = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_SDO_EN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable module clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sun4i_i2s_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sun4i_i2s*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.sun4i_i2s* @dev_get_drvdata(%struct.device* %6)
  store %struct.sun4i_i2s* %7, %struct.sun4i_i2s** %4, align 8
  %8 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %20 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regcache_cache_only(i32 %21, i32 0)
  %23 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %24 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcache_mark_dirty(i32 %25)
  %27 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regcache_sync(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %61

36:                                               ; preds = %18
  %37 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %38 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %41 = load i32, i32* @SUN4I_I2S_CTRL_GL_EN, align 4
  %42 = load i32, i32* @SUN4I_I2S_CTRL_GL_EN, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %45 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %48 = load i32, i32* @SUN4I_I2S_CTRL_SDO_EN_MASK, align 4
  %49 = call i32 @SUN4I_I2S_CTRL_SDO_EN(i32 0)
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %52 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %61

60:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %67

61:                                               ; preds = %57, %33
  %62 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %63 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_disable_unprepare(i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %60, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.sun4i_i2s* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_I2S_CTRL_SDO_EN(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
