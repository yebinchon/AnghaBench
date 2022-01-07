; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_wm_chswap_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_wm_chswap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32 }

@WM_DAC_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_chswap_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_chswap_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %15 = load i32, i32* @WM_DAC_CTRL1, align 4
  %16 = call zeroext i16 @wm_get(%struct.snd_ice1712* %14, i32 %15)
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 15
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %6, align 2
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, 96
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  br label %39

34:                                               ; preds = %2
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, 144
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %47 = load i32, i32* @WM_DAC_CTRL1, align 4
  %48 = load i16, i16* %6, align 2
  %49 = call i32 @wm_put(%struct.snd_ice1712* %46, i32 %47, i16 zeroext %48)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %51 = load i32, i32* @WM_DAC_CTRL1, align 4
  %52 = load i16, i16* %6, align 2
  %53 = call i32 @wm_put_nocache(%struct.snd_ice1712* %50, i32 %51, i16 zeroext %52)
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @wm_put_nocache(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
