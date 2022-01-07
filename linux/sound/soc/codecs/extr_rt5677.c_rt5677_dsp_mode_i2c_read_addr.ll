; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_mode_i2c_read_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_dsp_mode_i2c_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5677_priv = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT5677_DSP_I2C_ADDR_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set addr msb value: %d\0A\00", align 1
@RT5677_DSP_I2C_ADDR_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to set addr lsb value: %d\0A\00", align 1
@RT5677_DSP_I2C_OP_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set op code value: %d\0A\00", align 1
@RT5677_DSP_I2C_DATA_MSB = common dso_local global i32 0, align 4
@RT5677_DSP_I2C_DATA_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5677_priv*, i32, i32*)* @rt5677_dsp_mode_i2c_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_dsp_mode_i2c_read_addr(%struct.rt5677_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rt5677_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt5677_priv* %0, %struct.rt5677_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RT5677_DSP_I2C_ADDR_MSB, align 4
  %21 = load i32, i32* %5, align 4
  %22 = lshr i32 %21, 16
  %23 = call i32 @regmap_write(i32 %19, i32 %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %78

32:                                               ; preds = %3
  %33 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %34 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5677_DSP_I2C_ADDR_LSB, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65535
  %39 = call i32 @regmap_write(i32 %35, i32 %36, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %78

48:                                               ; preds = %32
  %49 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %50 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RT5677_DSP_I2C_OP_CODE, align 4
  %53 = call i32 @regmap_write(i32 %51, i32 %52, i32 2)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %78

62:                                               ; preds = %48
  %63 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RT5677_DSP_I2C_DATA_MSB, align 4
  %67 = call i32 @regmap_read(i32 %65, i32 %66, i32* %9)
  %68 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %69 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RT5677_DSP_I2C_DATA_LSB, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %10)
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 16
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %62, %56, %42, %26
  %79 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %80 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
