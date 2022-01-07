; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_get_mute_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_get_mute_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { %struct.pmac_gpio, %struct.pmac_gpio, %struct.pmac_gpio }
%struct.pmac_gpio = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_get_mute_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_get_mute_switch(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca %struct.pmac_tumbler*, align 8
  %8 = alloca %struct.pmac_gpio*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_pmac* %10, %struct.snd_pmac** %6, align 8
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 0
  %13 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %12, align 8
  store %struct.pmac_tumbler* %13, %struct.pmac_tumbler** %7, align 8
  %14 = icmp ne %struct.pmac_tumbler* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 130, label %25
    i32 128, label %28
  ]

22:                                               ; preds = %18
  %23 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %24 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %23, i32 0, i32 2
  store %struct.pmac_gpio* %24, %struct.pmac_gpio** %8, align 8
  br label %32

25:                                               ; preds = %18
  %26 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %27 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %26, i32 0, i32 1
  store %struct.pmac_gpio* %27, %struct.pmac_gpio** %8, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %30 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %29, i32 0, i32 0
  store %struct.pmac_gpio* %30, %struct.pmac_gpio** %8, align 8
  br label %32

31:                                               ; preds = %18
  store %struct.pmac_gpio* null, %struct.pmac_gpio** %8, align 8
  br label %32

32:                                               ; preds = %31, %28, %25, %22
  %33 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %34 = icmp eq %struct.pmac_gpio* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %32
  %39 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %40 = call i32 @check_audio_gpio(%struct.pmac_gpio* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %43, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %35, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @check_audio_gpio(%struct.pmac_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
