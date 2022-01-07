; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@TLV320AIC23_RESET = common dso_local global i32 0, align 4
@TLV320AIC23_DIGT = common dso_local global i32 0, align 4
@TLV320AIC23_DEEMP_44K = common dso_local global i32 0, align 4
@TLV320AIC23_LINVOL = common dso_local global i32 0, align 4
@TLV320AIC23_LIM_MUTED = common dso_local global i32 0, align 4
@TLV320AIC23_LRS_ENABLED = common dso_local global i32 0, align 4
@TLV320AIC23_RINVOL = common dso_local global i32 0, align 4
@TLV320AIC23_ANLG = common dso_local global i32 0, align 4
@TLV320AIC23_BYPASS_ON = common dso_local global i32 0, align 4
@TLV320AIC23_MICM_MUTED = common dso_local global i32 0, align 4
@TLV320AIC23_LCHNVOL = common dso_local global i32 0, align 4
@TLV320AIC23_DEFAULT_OUT_VOL = common dso_local global i32 0, align 4
@TLV320AIC23_OUT_VOL_MASK = common dso_local global i32 0, align 4
@TLV320AIC23_RCHNVOL = common dso_local global i32 0, align 4
@TLV320AIC23_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @tlv320aic23_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @TLV320AIC23_RESET, align 4
  %5 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %3, i32 %4, i32 0)
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @TLV320AIC23_DIGT, align 4
  %8 = load i32, i32* @TLV320AIC23_DEEMP_44K, align 4
  %9 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %6, i32 %7, i32 %8)
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @TLV320AIC23_LINVOL, align 4
  %12 = load i32, i32* @TLV320AIC23_LIM_MUTED, align 4
  %13 = load i32, i32* @TLV320AIC23_LRS_ENABLED, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = load i32, i32* @TLV320AIC23_RINVOL, align 4
  %17 = load i32, i32* @TLV320AIC23_LIM_MUTED, align 4
  %18 = load i32, i32* @TLV320AIC23_LRS_ENABLED, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @TLV320AIC23_ANLG, align 4
  %22 = load i32, i32* @TLV320AIC23_BYPASS_ON, align 4
  %23 = load i32, i32* @TLV320AIC23_MICM_MUTED, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %24, i32 0)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @TLV320AIC23_LCHNVOL, align 4
  %28 = load i32, i32* @TLV320AIC23_DEFAULT_OUT_VOL, align 4
  %29 = load i32, i32* @TLV320AIC23_OUT_VOL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @TLV320AIC23_RCHNVOL, align 4
  %34 = load i32, i32* @TLV320AIC23_DEFAULT_OUT_VOL, align 4
  %35 = load i32, i32* @TLV320AIC23_OUT_VOL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 %36)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %39 = load i32, i32* @TLV320AIC23_ACTIVE, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 1)
  ret i32 0
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
