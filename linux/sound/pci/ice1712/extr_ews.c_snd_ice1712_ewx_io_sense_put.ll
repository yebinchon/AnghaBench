; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ewx_io_sense_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ewx_io_sense_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.snd_ice1712 = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_ewx_io_sense_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ewx_io_sense_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %41 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %40)
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %43 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %44 = call i32 @snd_ice1712_read(%struct.snd_ice1712* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %53 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %52, i32 %53, i32 %54)
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %57 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %38, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
