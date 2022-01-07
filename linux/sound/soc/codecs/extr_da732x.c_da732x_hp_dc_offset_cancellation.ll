; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_hp_dc_offset_cancellation.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_hp_dc_offset_cancellation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA732X_REG_DAC1_SOFTMUTE = common dso_local global i32 0, align 4
@DA732X_SOFTMUTE_EN = common dso_local global i32 0, align 4
@DA732X_GAIN_RAMPED = common dso_local global i32 0, align 4
@DA732X_16_SAMPLES = common dso_local global i32 0, align 4
@DA732X_REG_DAC1_SEL = common dso_local global i32 0, align 4
@DA732X_DACL_EN = common dso_local global i32 0, align 4
@DA732X_DACR_EN = common dso_local global i32 0, align 4
@DA732X_DACL_SDM = common dso_local global i32 0, align 4
@DA732X_DACR_SDM = common dso_local global i32 0, align 4
@DA732X_DACL_MUTE = common dso_local global i32 0, align 4
@DA732X_DACR_MUTE = common dso_local global i32 0, align 4
@DA732X_REG_HPL = common dso_local global i32 0, align 4
@DA732X_HP_OUT_DAC_EN = common dso_local global i32 0, align 4
@DA732X_HP_OUT_MUTE = common dso_local global i32 0, align 4
@DA732X_HP_OUT_EN = common dso_local global i32 0, align 4
@DA732X_REG_HPR = common dso_local global i32 0, align 4
@DA732X_DACS_DIS = common dso_local global i32 0, align 4
@DA732X_HP_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @da732x_hp_dc_offset_cancellation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da732x_hp_dc_offset_cancellation(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @DA732X_REG_DAC1_SOFTMUTE, align 4
  %5 = load i32, i32* @DA732X_SOFTMUTE_EN, align 4
  %6 = load i32, i32* @DA732X_GAIN_RAMPED, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DA732X_16_SAMPLES, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %3, i32 %4, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @DA732X_REG_DAC1_SEL, align 4
  %13 = load i32, i32* @DA732X_DACL_EN, align 4
  %14 = load i32, i32* @DA732X_DACR_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DA732X_DACL_SDM, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DA732X_DACR_SDM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DA732X_DACL_MUTE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DA732X_DACR_MUTE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @DA732X_REG_HPL, align 4
  %27 = load i32, i32* @DA732X_HP_OUT_DAC_EN, align 4
  %28 = load i32, i32* @DA732X_HP_OUT_MUTE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DA732X_HP_OUT_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @DA732X_REG_HPR, align 4
  %35 = load i32, i32* @DA732X_HP_OUT_EN, align 4
  %36 = load i32, i32* @DA732X_HP_OUT_MUTE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DA732X_HP_OUT_DAC_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %42 = call i32 @da732x_dac_offset_adjust(%struct.snd_soc_component* %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %44 = call i32 @da732x_output_offset_adjust(%struct.snd_soc_component* %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %46 = load i32, i32* @DA732X_REG_DAC1_SEL, align 4
  %47 = load i32, i32* @DA732X_DACS_DIS, align 4
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = load i32, i32* @DA732X_REG_HPL, align 4
  %51 = load i32, i32* @DA732X_HP_DIS, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %54 = load i32, i32* @DA732X_REG_HPR, align 4
  %55 = load i32, i32* @DA732X_HP_DIS, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @da732x_dac_offset_adjust(%struct.snd_soc_component*) #1

declare dso_local i32 @da732x_output_offset_adjust(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
