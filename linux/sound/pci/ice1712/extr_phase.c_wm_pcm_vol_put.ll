; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_wm_pcm_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_wm_pcm_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_ice1712 = type { i32 }

@PCM_RES = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@PCM_MIN = common dso_local global i16 0, align 2
@WM_DAC_DIG_MASTER_ATTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_pcm_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_pcm_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  %18 = load i16, i16* %17, align 2
  store i16 %18, i16* %8, align 2
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @PCM_RES, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %29 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %28)
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @PCM_MIN, align 2
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %35, %37
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ 0, %39 ]
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %8, align 2
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %45 = load i32, i32* @WM_DAC_DIG_MASTER_ATTEN, align 4
  %46 = call i32 @wm_get(%struct.snd_ice1712* %44, i32 %45)
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %7, align 2
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %8, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %56 = load i32, i32* @WM_DAC_DIG_MASTER_ATTEN, align 4
  %57 = load i16, i16* %8, align 2
  %58 = call i32 @wm_put(%struct.snd_ice1712* %55, i32 %56, i16 zeroext %57)
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %60 = load i32, i32* @WM_DAC_DIG_MASTER_ATTEN, align 4
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, 256
  %64 = trunc i32 %63 to i16
  %65 = call i32 @wm_put_nocache(%struct.snd_ice1712* %59, i32 %60, i16 zeroext %64)
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %54, %40
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %68 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @wm_put_nocache(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
