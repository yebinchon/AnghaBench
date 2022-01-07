; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_put_noise_sup_sw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_put_noise_sup_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }

@DA7210_ADC = common dso_local global i32 0, align 4
@DA7210_ADC_ALC_EN = common dso_local global i32 0, align 4
@DA7210_ZERO_CROSS = common dso_local global i32 0, align 4
@DA7210_AUX1_L_ZC = common dso_local global i32 0, align 4
@DA7210_AUX1_R_ZC = common dso_local global i32 0, align 4
@DA7210_HP_L_ZC = common dso_local global i32 0, align 4
@DA7210_HP_R_ZC = common dso_local global i32 0, align 4
@DA7210_IN_GAIN = common dso_local global i32 0, align 4
@DA7210_INPGA_L_VOL = common dso_local global i32 0, align 4
@DA7210_INPGA_MIN_VOL_NS = common dso_local global i32 0, align 4
@DA7210_INPGA_R_VOL = common dso_local global i32 0, align 4
@DA7210_AUX1_L = common dso_local global i32 0, align 4
@DA7210_AUX1_L_VOL = common dso_local global i32 0, align 4
@DA7210_AUX1_MIN_VOL_NS = common dso_local global i32 0, align 4
@DA7210_AUX1_R = common dso_local global i32 0, align 4
@DA7210_AUX1_R_VOL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @da7210_put_noise_sup_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7210_put_noise_sup_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %8)
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %6, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load i32, i32* @DA7210_ADC, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  %22 = load i32, i32* @DA7210_ADC_ALC_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %86

26:                                               ; preds = %18
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = load i32, i32* @DA7210_ZERO_CROSS, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  %30 = load i32, i32* @DA7210_AUX1_L_ZC, align 4
  %31 = load i32, i32* @DA7210_AUX1_R_ZC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DA7210_HP_L_ZC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DA7210_HP_R_ZC, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %29, %36
  %38 = load i32, i32* @DA7210_AUX1_L_ZC, align 4
  %39 = load i32, i32* @DA7210_AUX1_R_ZC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @DA7210_HP_L_ZC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DA7210_HP_R_ZC, align 4
  %44 = or i32 %42, %43
  %45 = icmp ne i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %86

47:                                               ; preds = %26
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %49 = load i32, i32* @DA7210_IN_GAIN, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DA7210_INPGA_L_VOL, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @DA7210_INPGA_MIN_VOL_NS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @DA7210_INPGA_R_VOL, align 4
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 4
  %61 = load i32, i32* @DA7210_INPGA_MIN_VOL_NS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %47
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = load i32, i32* @DA7210_AUX1_L, align 4
  %67 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %65, i32 %66)
  %68 = load i32, i32* @DA7210_AUX1_L_VOL, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @DA7210_AUX1_MIN_VOL_NS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %74 = load i32, i32* @DA7210_AUX1_R, align 4
  %75 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %73, i32 %74)
  %76 = load i32, i32* @DA7210_AUX1_R_VOL, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @DA7210_AUX1_MIN_VOL_NS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72, %64
  br label %86

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %85 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %83, %struct.snd_ctl_elem_value* %84)
  store i32 %85, i32* %3, align 4
  br label %89

86:                                               ; preds = %80, %63, %46, %25
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
