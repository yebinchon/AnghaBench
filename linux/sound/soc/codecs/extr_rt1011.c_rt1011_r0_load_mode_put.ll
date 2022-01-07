; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_r0_load_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_r0_load_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rt1011_priv = type { i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"New r0 resistance about %d.%02d ohm, reg=0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rt1011_r0_load_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_r0_load_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt1011_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt1011_priv* %15, %struct.rt1011_priv** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %24 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %99

36:                                               ; preds = %28
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %99

48:                                               ; preds = %36
  %49 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %50 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.device* @regmap_get_device(i32 %51)
  store %struct.device* %52, %struct.device** %8, align 8
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %53)
  %55 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %48
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %66 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 -2147483648, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %69 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = udiv i32 %67, %70
  %72 = udiv i32 %71, 128
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = udiv i32 %73, %76
  %78 = mul i32 %77, 100
  %79 = udiv i32 %78, 128
  %80 = load i32, i32* %9, align 4
  %81 = mul i32 %80, 100
  %82 = sub i32 %79, %81
  store i32 %82, i32* %10, align 4
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %87 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %88)
  %90 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %91 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %57
  %95 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %96 = call i32 @rt1011_r0_load(%struct.rt1011_priv* %95)
  br label %97

97:                                               ; preds = %94, %57
  br label %98

98:                                               ; preds = %97, %48
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %45, %35, %27
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @rt1011_r0_load(%struct.rt1011_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
