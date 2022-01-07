; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_recv_spk_mode_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_recv_spk_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.rt1011_priv = type { i64 }

@SND_SOC_BIAS_OFF = common dso_local global i64 0, align 8
@RT1011_CLASSD_INTERNAL_SET_3 = common dso_local global i32 0, align 4
@RT1011_REG_GAIN_CLASSD_RI_SPK_MASK = common dso_local global i32 0, align 4
@RT1011_REG_GAIN_CLASSD_RI_410K = common dso_local global i32 0, align 4
@RT1011_CLASSD_INTERNAL_SET_1 = common dso_local global i32 0, align 4
@RT1011_RECV_MODE_SPK_MASK = common dso_local global i32 0, align 4
@RT1011_RECV_MODE = common dso_local global i32 0, align 4
@RT1011_REG_GAIN_CLASSD_RI_72P5K = common dso_local global i32 0, align 4
@RT1011_SPK_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rt1011_recv_spk_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_recv_spk_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt1011_priv*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %8)
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %6, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %11 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.rt1011_priv* %11, %struct.rt1011_priv** %7, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %25)
  %27 = load i64, i64* @SND_SOC_BIAS_OFF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %38 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rt1011_priv*, %struct.rt1011_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %29
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %45 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_3, align 4
  %46 = load i32, i32* @RT1011_REG_GAIN_CLASSD_RI_SPK_MASK, align 4
  %47 = load i32, i32* @RT1011_REG_GAIN_CLASSD_RI_410K, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %50 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_1, align 4
  %51 = load i32, i32* @RT1011_RECV_MODE_SPK_MASK, align 4
  %52 = load i32, i32* @RT1011_RECV_MODE, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %52)
  br label %65

54:                                               ; preds = %29
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %56 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_3, align 4
  %57 = load i32, i32* @RT1011_REG_GAIN_CLASSD_RI_SPK_MASK, align 4
  %58 = load i32, i32* @RT1011_REG_GAIN_CLASSD_RI_72P5K, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %61 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_1, align 4
  %62 = load i32, i32* @RT1011_RECV_MODE_SPK_MASK, align 4
  %63 = load i32, i32* @RT1011_SPK_MODE, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %43
  br label %66

66:                                               ; preds = %65, %24
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
