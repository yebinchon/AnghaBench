; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_i2s_mux_put_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_i2s_mux_put_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_enum = type { i32 }

@CTRL0_I2S_DAT_SEL = common dso_local global i32 0, align 4
@TOHDMITX_CTRL0 = common dso_local global i32 0, align 4
@CTRL0_I2S_LRCLK_SEL = common dso_local global i32 0, align 4
@CTRL0_I2S_BCLK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @g12a_tohdmitx_i2s_mux_put_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_tohdmitx_i2s_mux_put_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.soc_enum*
  store %struct.soc_enum* %17, %struct.soc_enum** %7, align 8
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @CTRL0_I2S_DAT_SEL, align 4
  %27 = call i32 @g12a_tohdmitx_get_input_val(%struct.snd_soc_component* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %32, %struct.snd_kcontrol* %33, i32 0, %struct.soc_enum* null, i32* null)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %37 = load i32, i32* @TOHDMITX_CTRL0, align 4
  %38 = load i32, i32* @CTRL0_I2S_DAT_SEL, align 4
  %39 = load i32, i32* @CTRL0_I2S_LRCLK_SEL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CTRL0_I2S_BCLK_SEL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CTRL0_I2S_DAT_SEL, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = load i32, i32* @CTRL0_I2S_LRCLK_SEL, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FIELD_PREP(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load i32, i32* @CTRL0_I2S_BCLK_SEL, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @FIELD_PREP(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %42, i32 %53)
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %59 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %55, %struct.snd_kcontrol* %56, i32 %57, %struct.soc_enum* %58, i32* null)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @g12a_tohdmitx_get_input_val(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
