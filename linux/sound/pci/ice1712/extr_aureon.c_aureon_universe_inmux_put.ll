; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_universe_inmux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_universe_inmux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i8 }

@EINVAL = common dso_local global i32 0, align 4
@PCA9554_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @aureon_universe_inmux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_universe_inmux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca %struct.aureon_spec*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %6, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 0
  %15 = load %struct.aureon_spec*, %struct.aureon_spec** %14, align 8
  store %struct.aureon_spec* %15, %struct.aureon_spec** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %9, align 1
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %31 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %30)
  %32 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  %33 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %45 = load i32, i32* @PCA9554_OUT, align 4
  %46 = load i8, i8* %9, align 1
  %47 = call i32 @aureon_pca9554_write(%struct.snd_ice1712* %44, i32 %45, i8 zeroext %46)
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.aureon_spec*, %struct.aureon_spec** %7, align 8
  %50 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %49, i32 0, i32 0
  store i8 %48, i8* %50, align 1
  br label %51

51:                                               ; preds = %43, %29
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %53 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @aureon_pca9554_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
