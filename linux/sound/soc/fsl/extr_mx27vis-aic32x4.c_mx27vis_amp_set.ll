; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mx27vis-aic32x4.c_mx27vis_amp_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mx27vis-aic32x4.c_mx27vis_amp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mx27vis_amp_gain0_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_gain1_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_gain = common dso_local global i32 0, align 4
@mx27vis_amp_mutel_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_muter_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_mute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mx27vis_amp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx27vis_amp_set(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %13, %struct.soc_mixer_control** %6, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %22 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %25 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %55 [
    i32 129, label %35
    i32 128, label %45
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @mx27vis_amp_gain0_gpio, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = call i32 @gpio_set_value(i32 %36, i32 %38)
  %40 = load i32, i32* @mx27vis_amp_gain1_gpio, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 1
  %43 = call i32 @gpio_set_value(i32 %40, i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* @mx27vis_amp_gain, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load i32, i32* @mx27vis_amp_mutel_gpio, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = call i32 @gpio_set_value(i32 %46, i32 %48)
  %50 = load i32, i32* @mx27vis_amp_muter_gpio, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 1
  %53 = call i32 @gpio_set_value(i32 %50, i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* @mx27vis_amp_mute, align 4
  br label %55

55:                                               ; preds = %33, %45, %35
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
