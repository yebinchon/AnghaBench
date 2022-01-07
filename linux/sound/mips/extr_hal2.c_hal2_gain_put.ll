; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_gain_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_gain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_hal2 = type { i32 }

@H2I_DAC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_M = common dso_local global i32 0, align 4
@H2I_C2_MUTE = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_ADC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_GAIN_M = common dso_local global i32 0, align 4
@H2I_C2_R_GAIN_M = common dso_local global i32 0, align 4
@H2I_C2_L_GAIN_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_GAIN_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hal2_gain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_gain_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_hal2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_hal2* %12, %struct.snd_hal2** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  switch i32 %30, label %99 [
    i32 128, label %31
    i32 129, label %75
  ]

31:                                               ; preds = %2
  %32 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %33 = load i32, i32* @H2I_DAC_C2, align 4
  %34 = call i32 @hal2_i_read32(%struct.snd_hal2* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @H2I_C2_L_ATT_M, align 4
  %37 = load i32, i32* @H2I_C2_R_ATT_M, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @H2I_C2_MUTE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %35, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 31, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 31, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @H2I_C2_L_ATT_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @H2I_C2_R_ATT_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %70

62:                                               ; preds = %31
  %63 = load i32, i32* @H2I_C2_L_ATT_M, align 4
  %64 = load i32, i32* @H2I_C2_R_ATT_M, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @H2I_C2_MUTE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %47
  %71 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %72 = load i32, i32* @H2I_DAC_C2, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @hal2_i_write32(%struct.snd_hal2* %71, i32 %72, i32 %73)
  br label %102

75:                                               ; preds = %2
  %76 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %77 = load i32, i32* @H2I_ADC_C2, align 4
  %78 = call i32 @hal2_i_read32(%struct.snd_hal2* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @H2I_C2_L_GAIN_M, align 4
  %81 = load i32, i32* @H2I_C2_R_GAIN_M, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %79, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @H2I_C2_L_GAIN_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @H2I_C2_R_GAIN_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %96 = load i32, i32* @H2I_ADC_C2, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @hal2_i_write32(%struct.snd_hal2* %95, i32 %96, i32 %97)
  br label %102

99:                                               ; preds = %2
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %75, %70
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %103, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @hal2_i_read32(%struct.snd_hal2*, i32) #1

declare dso_local i32 @hal2_i_write32(%struct.snd_hal2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
