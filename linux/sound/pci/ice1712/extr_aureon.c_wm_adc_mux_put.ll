; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_adc_mux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_adc_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@WM_ADC_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_adc_mux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adc_mux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %11)
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = load i32, i32* @WM_ADC_MUX, align 4
  %15 = call zeroext i16 @wm_get(%struct.snd_ice1712* %13, i32 %14)
  store i16 %15, i16* %6, align 2
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, -120
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %7, align 2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 7
  %40 = shl i32 %39, 4
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = load i32, i32* @WM_ADC_MUX, align 4
  %56 = load i16, i16* %7, align 2
  %57 = call i32 @wm_put(%struct.snd_ice1712* %54, i32 %55, i16 zeroext %56)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %60 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local zeroext i16 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
