; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32, %struct.max98090_cdata* }
%struct.max98090_cdata = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@M98090_REG_TDM_FORMAT = common dso_local global i32 0, align 4
@M98090_TDM_SLOTL_SHIFT = common dso_local global i32 0, align 4
@M98090_TDM_SLOTR_SHIFT = common dso_local global i32 0, align 4
@M98090_TDM_SLOTDLY_SHIFT = common dso_local global i32 0, align 4
@M98090_REG_TDM_CONTROL = common dso_local global i32 0, align 4
@M98090_TDM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @max98090_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.max98090_priv*, align 8
  %14 = alloca %struct.max98090_cdata*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %19 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.max98090_priv* %19, %struct.max98090_priv** %13, align 8
  %20 = load %struct.max98090_priv*, %struct.max98090_priv** %13, align 8
  %21 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %20, i32 0, i32 3
  %22 = load %struct.max98090_cdata*, %struct.max98090_cdata** %21, align 8
  %23 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %22, i64 0
  store %struct.max98090_cdata* %23, %struct.max98090_cdata** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %68

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.max98090_priv*, %struct.max98090_priv** %13, align 8
  %35 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.max98090_priv*, %struct.max98090_priv** %13, align 8
  %38 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.max98090_priv*, %struct.max98090_priv** %13, align 8
  %40 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %60

43:                                               ; preds = %32
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @M98090_REG_TDM_FORMAT, align 4
  %46 = load i32, i32* @M98090_TDM_SLOTL_SHIFT, align 4
  %47 = shl i32 0, %46
  %48 = load i32, i32* @M98090_TDM_SLOTR_SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @M98090_TDM_SLOTDLY_SHIFT, align 4
  %52 = shl i32 0, %51
  %53 = or i32 %50, %52
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %56 = load i32, i32* @M98090_REG_TDM_CONTROL, align 4
  %57 = load i32, i32* @M98090_TDM_MASK, align 4
  %58 = load i32, i32* @M98090_TDM_MASK, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43, %32
  %61 = load %struct.max98090_cdata*, %struct.max98090_cdata** %14, align 8
  %62 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %64 = load %struct.max98090_priv*, %struct.max98090_priv** %13, align 8
  %65 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @max98090_dai_set_fmt(%struct.snd_soc_dai* %63, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %29
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @max98090_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
