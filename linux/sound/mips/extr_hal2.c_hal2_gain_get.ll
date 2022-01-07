; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_gain_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_gain_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_hal2 = type { i32 }

@H2I_DAC_C2 = common dso_local global i32 0, align 4
@H2I_C2_MUTE = common dso_local global i32 0, align 4
@H2I_C2_L_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_ATT_SHIFT = common dso_local global i32 0, align 4
@H2I_ADC_C2 = common dso_local global i32 0, align 4
@H2I_C2_L_GAIN_SHIFT = common dso_local global i32 0, align 4
@H2I_C2_R_GAIN_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hal2_gain_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_gain_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_hal2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_hal2* %11, %struct.snd_hal2** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  switch i32 %15, label %49 [
    i32 128, label %16
    i32 129, label %37
  ]

16:                                               ; preds = %2
  %17 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %18 = load i32, i32* @H2I_DAC_C2, align 4
  %19 = call i32 @hal2_i_read32(%struct.snd_hal2* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @H2I_C2_MUTE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @H2I_C2_L_ATT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 31
  %30 = sub nsw i32 31, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @H2I_C2_R_ATT_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 31
  %35 = sub nsw i32 31, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %25, %24
  br label %52

37:                                               ; preds = %2
  %38 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %39 = load i32, i32* @H2I_ADC_C2, align 4
  %40 = call i32 @hal2_i_read32(%struct.snd_hal2* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @H2I_C2_L_GAIN_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = and i32 %43, 15
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @H2I_C2_R_GAIN_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = and i32 %47, 15
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %37, %36
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %60, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %52, %49
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.snd_hal2* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @hal2_i_read32(%struct.snd_hal2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
