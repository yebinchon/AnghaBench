; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_alc_calib.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_alc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7219_MIC_1_CTRL = common dso_local global i32 0, align 4
@DA7219_MIXIN_L_CTRL = common dso_local global i32 0, align 4
@DA7219_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA7219_MIC_1_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_MIC_1_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7219_MIXIN_L_AMP_EN_MASK = common dso_local global i32 0, align 4
@DA7219_MIXIN_L_AMP_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ADC_L_MUTE_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ADC_L_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ALC_CTRL1 = common dso_local global i32 0, align 4
@DA7219_ALC_AUTO_CALIB_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ALC_CALIB_OVERFLOW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ALC auto calibration failed with overflow\0A\00", align 1
@DA7219_ALC_OFFSET_EN_MASK = common dso_local global i32 0, align 4
@DA7219_ALC_SYNC_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da7219_alc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da7219_alc_calib(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = load i32, i32* @DA7219_MIC_1_CTRL, align 4
  %9 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @DA7219_MIXIN_L_CTRL, align 4
  %12 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @DA7219_ADC_L_CTRL, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @DA7219_MIC_1_CTRL, align 4
  %18 = load i32, i32* @DA7219_MIC_1_AMP_EN_MASK, align 4
  %19 = load i32, i32* @DA7219_MIC_1_AMP_EN_MASK, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @DA7219_MIC_1_CTRL, align 4
  %23 = load i32, i32* @DA7219_MIC_1_AMP_MUTE_EN_MASK, align 4
  %24 = load i32, i32* @DA7219_MIC_1_AMP_MUTE_EN_MASK, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @DA7219_MIXIN_L_CTRL, align 4
  %28 = load i32, i32* @DA7219_MIXIN_L_AMP_EN_MASK, align 4
  %29 = load i32, i32* @DA7219_MIXIN_L_AMP_MUTE_EN_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DA7219_MIXIN_L_AMP_EN_MASK, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @DA7219_ADC_L_CTRL, align 4
  %35 = load i32, i32* @DA7219_ADC_L_MUTE_EN_MASK, align 4
  %36 = load i32, i32* @DA7219_ADC_L_EN_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DA7219_ADC_L_EN_MASK, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %41 = load i32, i32* @DA7219_ALC_CTRL1, align 4
  %42 = load i32, i32* @DA7219_ALC_AUTO_CALIB_EN_MASK, align 4
  %43 = load i32, i32* @DA7219_ALC_AUTO_CALIB_EN_MASK, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %49, %1
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @DA7219_ALC_CTRL1, align 4
  %48 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DA7219_ALC_AUTO_CALIB_EN_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %45, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DA7219_ALC_CALIB_OVERFLOW_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %65 = load i32, i32* @DA7219_ALC_CTRL1, align 4
  %66 = load i32, i32* @DA7219_ALC_OFFSET_EN_MASK, align 4
  %67 = load i32, i32* @DA7219_ALC_SYNC_MODE_MASK, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %68, i32 0)
  br label %80

70:                                               ; preds = %54
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = load i32, i32* @DA7219_ALC_CTRL1, align 4
  %73 = load i32, i32* @DA7219_ALC_OFFSET_EN_MASK, align 4
  %74 = load i32, i32* @DA7219_ALC_SYNC_MODE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DA7219_ALC_OFFSET_EN_MASK, align 4
  %77 = load i32, i32* @DA7219_ALC_SYNC_MODE_MASK, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %70, %59
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = load i32, i32* @DA7219_ADC_L_CTRL, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %86 = load i32, i32* @DA7219_MIXIN_L_CTRL, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i32 %86, i32 %87)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %90 = load i32, i32* @DA7219_MIC_1_CTRL, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
