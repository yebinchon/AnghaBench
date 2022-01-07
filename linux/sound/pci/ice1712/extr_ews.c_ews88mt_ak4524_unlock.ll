; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88mt_ak4524_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88mt_ak4524_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ews88mt_ak4524_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ews88mt_ak4524_unlock(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %7 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %6, i32 0, i32 0
  %8 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %7, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %8, i64 0
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %11)
  %13 = call i32 @udelay(i32 1)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %15 = call i32 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712* %14, i32 15)
  ret void
}

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
