; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_ac97_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_ac97_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @aureon_ac97_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_ac97_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = call zeroext i16 @aureon_ac97_read(%struct.snd_ice1712* %13, i32 %17)
  store i16 %18, i16* %6, align 2
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 32768
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, -32769
  %32 = or i32 %28, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %7, align 2
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 127
  %48 = load i16, i16* %7, align 2
  %49 = call i32 @aureon_ac97_write(%struct.snd_ice1712* %43, i32 %47, i16 zeroext %48)
  br label %50

50:                                               ; preds = %42, %2
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %52 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local zeroext i16 @aureon_ac97_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @aureon_ac97_write(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
