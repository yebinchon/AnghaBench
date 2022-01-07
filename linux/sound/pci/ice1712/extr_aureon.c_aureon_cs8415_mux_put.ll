; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_cs8415_mux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_cs8415_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i32 }

@CS8415_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @aureon_cs8415_mux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_cs8415_mux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.aureon_spec*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 0
  %14 = load %struct.aureon_spec*, %struct.aureon_spec** %13, align 8
  store %struct.aureon_spec* %14, %struct.aureon_spec** %6, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %16 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %15)
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %18 = load i32, i32* @CS8415_CTRL2, align 4
  %19 = call zeroext i16 @aureon_cs8415_get(%struct.snd_ice1712* %17, i32 %18)
  store i16 %19, i16* %7, align 2
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, -8
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %8, align 2
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %8, align 2
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %37, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %46 = load i32, i32* @CS8415_CTRL2, align 4
  %47 = load i16, i16* %8, align 2
  %48 = call i32 @aureon_cs8415_put(%struct.snd_ice1712* %45, i32 %46, i16 zeroext %47)
  br label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %51 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %50)
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %60 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local zeroext i16 @aureon_cs8415_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @aureon_cs8415_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
