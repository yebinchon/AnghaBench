; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_input_left_mux_put_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_input_left_mux_put_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.cpcap_audio = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_enum = type { i32 }

@CPCAP_BIT_MIC2_MUX = common dso_local global i32 0, align 4
@CPCAP_BIT_RX_L_ENCODE = common dso_local global i32 0, align 4
@CPCAP_REG_TXI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cpcap_input_left_mux_put_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_input_left_mux_put_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cpcap_audio*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.soc_enum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cpcap_audio* %17, %struct.cpcap_audio** %7, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %18)
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %8, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.soc_enum*
  store %struct.soc_enum* %23, %struct.soc_enum** %9, align 8
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* @CPCAP_BIT_MIC2_MUX, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @CPCAP_BIT_RX_L_ENCODE, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %46 [
    i32 1, label %40
    i32 2, label %43
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* @CPCAP_BIT_MIC2_MUX, align 4
  %42 = call i32 @BIT(i32 %41)
  store i32 %42, i32* %11, align 4
  br label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @CPCAP_BIT_RX_L_ENCODE, align 4
  %45 = call i32 @BIT(i32 %44)
  store i32 %45, i32* %11, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %43, %40
  %48 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %49 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CPCAP_REG_TXI, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %64 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %60, %struct.snd_kcontrol* %61, i32 %62, %struct.soc_enum* %63, i32* null)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
