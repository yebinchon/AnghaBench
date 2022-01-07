; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS42L56_DSP_MUTE_CTL = common dso_local global i32 0, align 4
@CS42L56_ADCAMIX_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_ADCBMIX_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_PCMAMIX_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_PCMBMIX_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_MSTB_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_MSTA_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_MUTE_ALL = common dso_local global i32 0, align 4
@CS42L56_MISC_ADC_CTL = common dso_local global i32 0, align 4
@CS42L56_ADCA_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_ADCB_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_HPA_VOLUME = common dso_local global i32 0, align 4
@CS42L56_HP_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_HPB_VOLUME = common dso_local global i32 0, align 4
@CS42L56_LOA_VOLUME = common dso_local global i32 0, align 4
@CS42L56_LO_MUTE_MASK = common dso_local global i32 0, align 4
@CS42L56_LOB_VOLUME = common dso_local global i32 0, align 4
@CS42L56_UNMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l56_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = load i32, i32* @CS42L56_DSP_MUTE_CTL, align 4
  %14 = load i32, i32* @CS42L56_ADCAMIX_MUTE_MASK, align 4
  %15 = load i32, i32* @CS42L56_ADCBMIX_MUTE_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS42L56_PCMAMIX_MUTE_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CS42L56_PCMBMIX_MUTE_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CS42L56_MSTB_MUTE_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CS42L56_MSTA_MUTE_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %24, i32 %25)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @CS42L56_MISC_ADC_CTL, align 4
  %29 = load i32, i32* @CS42L56_ADCA_MUTE_MASK, align 4
  %30 = load i32, i32* @CS42L56_ADCB_MUTE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = load i32, i32* @CS42L56_HPA_VOLUME, align 4
  %36 = load i32, i32* @CS42L56_HP_MUTE_MASK, align 4
  %37 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %40 = load i32, i32* @CS42L56_HPB_VOLUME, align 4
  %41 = load i32, i32* @CS42L56_HP_MUTE_MASK, align 4
  %42 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %45 = load i32, i32* @CS42L56_LOA_VOLUME, align 4
  %46 = load i32, i32* @CS42L56_LO_MUTE_MASK, align 4
  %47 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %50 = load i32, i32* @CS42L56_LOB_VOLUME, align 4
  %51 = load i32, i32* @CS42L56_LO_MUTE_MASK, align 4
  %52 = load i32, i32* @CS42L56_MUTE_ALL, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %52)
  br label %97

54:                                               ; preds = %2
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %56 = load i32, i32* @CS42L56_DSP_MUTE_CTL, align 4
  %57 = load i32, i32* @CS42L56_ADCAMIX_MUTE_MASK, align 4
  %58 = load i32, i32* @CS42L56_ADCBMIX_MUTE_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CS42L56_PCMAMIX_MUTE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CS42L56_PCMBMIX_MUTE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CS42L56_MSTB_MUTE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CS42L56_MSTA_MUTE_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CS42L56_UNMUTE, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %67, i32 %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %71 = load i32, i32* @CS42L56_MISC_ADC_CTL, align 4
  %72 = load i32, i32* @CS42L56_ADCA_MUTE_MASK, align 4
  %73 = load i32, i32* @CS42L56_ADCB_MUTE_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CS42L56_UNMUTE, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %74, i32 %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %78 = load i32, i32* @CS42L56_HPA_VOLUME, align 4
  %79 = load i32, i32* @CS42L56_HP_MUTE_MASK, align 4
  %80 = load i32, i32* @CS42L56_UNMUTE, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %83 = load i32, i32* @CS42L56_HPB_VOLUME, align 4
  %84 = load i32, i32* @CS42L56_HP_MUTE_MASK, align 4
  %85 = load i32, i32* @CS42L56_UNMUTE, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %88 = load i32, i32* @CS42L56_LOA_VOLUME, align 4
  %89 = load i32, i32* @CS42L56_LO_MUTE_MASK, align 4
  %90 = load i32, i32* @CS42L56_UNMUTE, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %93 = load i32, i32* @CS42L56_LOB_VOLUME, align 4
  %94 = load i32, i32* @CS42L56_LO_MUTE_MASK, align 4
  %95 = load i32, i32* @CS42L56_UNMUTE, align 4
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %54, %11
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
