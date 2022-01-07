; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { %struct.snd_akm4xxx* }
%struct.snd_akm4xxx = type { i32 }

@SCR_MUTE = common dso_local global i32 0, align 4
@AK4620_SMUTE = common dso_local global i32 0, align 4
@AK4620_DEEMVOL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @qtet_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtet_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_akm4xxx*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %6, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %14 = call i32 @get_scr(%struct.snd_ice1712* %13)
  %15 = load i32, i32* @SCR_MUTE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @SCR_MUTE, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @AK4620_SMUTE, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %35 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %34, i32 0, i32 0
  %36 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %35, align 8
  store %struct.snd_akm4xxx* %36, %struct.snd_akm4xxx** %10, align 8
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %39 = call i32 @get_scr(%struct.snd_ice1712* %38)
  %40 = load i32, i32* @SCR_MUTE, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @set_scr(%struct.snd_ice1712* %37, i32 %44)
  %46 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %10, align 8
  %47 = load i32, i32* @AK4620_DEEMVOL_REG, align 4
  %48 = load i32, i32* @AK4620_SMUTE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @qtet_akm_set_regs(%struct.snd_akm4xxx* %46, i32 %47, i32 %48, i32 %49)
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_scr(%struct.snd_ice1712*) #1

declare dso_local i32 @set_scr(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @qtet_akm_set_regs(%struct.snd_akm4xxx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
