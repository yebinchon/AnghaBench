; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_put_alc_sw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_put_alc_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }

@DA9055_MIC_L_CTRL = common dso_local global i32 0, align 4
@DA9055_MIC_R_CTRL = common dso_local global i32 0, align 4
@DA9055_MIC_L_MUTE_EN = common dso_local global i32 0, align 4
@DA9055_MIC_R_MUTE_EN = common dso_local global i32 0, align 4
@DA9055_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA9055_ADC_R_CTRL = common dso_local global i32 0, align 4
@DA9055_ADC_L_EN = common dso_local global i32 0, align 4
@DA9055_ADC_R_EN = common dso_local global i32 0, align 4
@DA9055_ALC_CIC_OP_CHANNEL_LEFT = common dso_local global i32 0, align 4
@DA9055_ALC_CIC_OP_CHANNEL_RIGHT = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_15_8 = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_OP2M_L = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_17_16 = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_OP2U_L = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_OP2M_R = common dso_local global i32 0, align 4
@DA9055_ALC_OFFSET_OP2U_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @da9055_put_alc_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_put_alc_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %5, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %116

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = load i32, i32* @DA9055_MIC_L_CTRL, align 4
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load i32, i32* @DA9055_MIC_R_CTRL, align 4
  %31 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = load i32, i32* @DA9055_MIC_L_CTRL, align 4
  %34 = load i32, i32* @DA9055_MIC_L_MUTE_EN, align 4
  %35 = load i32, i32* @DA9055_MIC_L_MUTE_EN, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %38 = load i32, i32* @DA9055_MIC_R_CTRL, align 4
  %39 = load i32, i32* @DA9055_MIC_R_MUTE_EN, align 4
  %40 = load i32, i32* @DA9055_MIC_R_MUTE_EN, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %43 = load i32, i32* @DA9055_ADC_L_CTRL, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %46 = load i32, i32* @DA9055_ADC_R_CTRL, align 4
  %47 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %49 = load i32, i32* @DA9055_ADC_L_CTRL, align 4
  %50 = load i32, i32* @DA9055_ADC_L_EN, align 4
  %51 = load i32, i32* @DA9055_ADC_L_EN, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = load i32, i32* @DA9055_ADC_R_CTRL, align 4
  %55 = load i32, i32* @DA9055_ADC_R_EN, align 4
  %56 = load i32, i32* @DA9055_ADC_R_EN, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %59 = load i32, i32* @DA9055_ALC_CIC_OP_CHANNEL_LEFT, align 4
  %60 = call i32 @da9055_get_alc_data(%struct.snd_soc_component* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %62 = load i32, i32* @DA9055_ALC_CIC_OP_CHANNEL_RIGHT, align 4
  %63 = call i32 @da9055_get_alc_data(%struct.snd_soc_component* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @DA9055_ALC_OFFSET_15_8, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 8
  store i32 %71, i32* %6, align 4
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %73 = load i32, i32* @DA9055_ALC_OFFSET_OP2M_L, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @DA9055_ALC_OFFSET_17_16, align 4
  %78 = and i32 %76, %77
  %79 = ashr i32 %78, 16
  store i32 %79, i32* %6, align 4
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = load i32, i32* @DA9055_ALC_OFFSET_OP2U_L, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @DA9055_ALC_OFFSET_15_8, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 8
  store i32 %87, i32* %6, align 4
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %89 = load i32, i32* @DA9055_ALC_OFFSET_OP2M_R, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @DA9055_ALC_OFFSET_17_16, align 4
  %94 = and i32 %92, %93
  %95 = ashr i32 %94, 16
  store i32 %95, i32* %6, align 4
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %97 = load i32, i32* @DA9055_ALC_OFFSET_OP2U_R, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 %98)
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %101 = load i32, i32* @DA9055_ADC_L_CTRL, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 %101, i32 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %105 = load i32, i32* @DA9055_ADC_R_CTRL, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 %106)
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %109 = load i32, i32* @DA9055_MIC_L_CTRL, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %108, i32 %109, i32 %110)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %113 = load i32, i32* @DA9055_MIC_R_CTRL, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %25, %2
  %117 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %118 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %119 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %117, %struct.snd_ctl_elem_value* %118)
  ret i32 %119
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @da9055_get_alc_data(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
