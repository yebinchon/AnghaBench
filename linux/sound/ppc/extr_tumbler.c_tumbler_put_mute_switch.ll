; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_put_mute_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_put_mute_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { %struct.pmac_tumbler*, i64, i64 }
%struct.pmac_tumbler = type { %struct.pmac_gpio, %struct.pmac_gpio, %struct.pmac_gpio }
%struct.pmac_gpio = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_put_mute_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_put_mute_switch(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca %struct.pmac_tumbler*, align 8
  %8 = alloca %struct.pmac_gpio*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pmac* %11, %struct.snd_pmac** %6, align 8
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 0
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %13, align 8
  store %struct.pmac_tumbler* %14, %struct.pmac_tumbler** %7, align 8
  %15 = icmp ne %struct.pmac_tumbler* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %32 [
    i32 129, label %23
    i32 130, label %26
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %25 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %24, i32 0, i32 2
  store %struct.pmac_gpio* %25, %struct.pmac_gpio** %8, align 8
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %28 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %27, i32 0, i32 1
  store %struct.pmac_gpio* %28, %struct.pmac_gpio** %8, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %31 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %30, i32 0, i32 0
  store %struct.pmac_gpio* %31, %struct.pmac_gpio** %8, align 8
  br label %33

32:                                               ; preds = %19
  store %struct.pmac_gpio* null, %struct.pmac_gpio** %8, align 8
  br label %33

33:                                               ; preds = %32, %29, %26, %23
  %34 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %35 = icmp eq %struct.pmac_gpio* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %33
  %40 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %41 = call i32 @check_audio_gpio(%struct.pmac_gpio* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %45, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %39
  %55 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %56 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @write_audio_gpio(%struct.pmac_gpio* %55, i32 %65)
  store i32 1, i32* %3, align 4
  br label %68

67:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %54, %36, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @check_audio_gpio(%struct.pmac_gpio*) #1

declare dso_local i32 @write_audio_gpio(%struct.pmac_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
