; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_mode_i2c_write_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_mode_i2c_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5677_priv = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT5677_DSP_I2C_ADDR_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set addr msb value: %d\0A\00", align 1
@RT5677_DSP_I2C_ADDR_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set addr lsb value: %d\0A\00", align 1
@RT5677_DSP_I2C_DATA_MSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set data msb value: %d\0A\00", align 1
@RT5677_DSP_I2C_DATA_LSB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to set data lsb value: %d\0A\00", align 1
@RT5677_DSP_I2C_OP_CODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set op code value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5677_priv*, i32, i32, i32)* @rt5677_dsp_mode_i2c_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_dsp_mode_i2c_write_addr(%struct.rt5677_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rt5677_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca i32, align 4
  store %struct.rt5677_priv* %0, %struct.rt5677_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %9, align 8
  %14 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RT5677_DSP_I2C_ADDR_MSB, align 4
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 16
  %23 = call i32 @regmap_write(i32 %19, i32 %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %96

32:                                               ; preds = %4
  %33 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5677_DSP_I2C_ADDR_LSB, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 65535
  %39 = call i32 @regmap_write(i32 %35, i32 %36, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %96

48:                                               ; preds = %32
  %49 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RT5677_DSP_I2C_DATA_MSB, align 4
  %53 = load i32, i32* %7, align 4
  %54 = lshr i32 %53, 16
  %55 = call i32 @regmap_write(i32 %51, i32 %52, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %96

64:                                               ; preds = %48
  %65 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %66 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RT5677_DSP_I2C_DATA_LSB, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65535
  %71 = call i32 @regmap_write(i32 %67, i32 %68, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %96

80:                                               ; preds = %64
  %81 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %82 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RT5677_DSP_I2C_OP_CODE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @regmap_write(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %96

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %89, %74, %58, %42, %26
  %97 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
