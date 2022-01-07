; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_jack_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_psc724.c_psc724_set_jack_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.psc724_spec* }
%struct.psc724_spec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.snd_ctl_elem_id = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }

@WM8776_REG_PWRDOWN = common dso_local global i64 0, align 8
@WM8776_PWR_HPPD = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master Speakers Playback Switch\00", align 1
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@WM8776_CTL_HP_SW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @psc724_set_jack_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc724_set_jack_state(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psc724_spec*, align 8
  %6 = alloca %struct.snd_ctl_elem_id, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 1
  %11 = load %struct.psc724_spec*, %struct.psc724_spec** %10, align 8
  store %struct.psc724_spec* %11, %struct.psc724_spec** %5, align 8
  %12 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %13 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @WM8776_REG_PWRDOWN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WM8776_PWR_HPPD, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @psc724_set_master_switch(%struct.snd_ice1712* %22, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @WM8776_PWR_HPPD, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %36 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @snd_wm8776_set_power(%struct.TYPE_4__* %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %41 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 8)
  %43 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %44 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlcpy(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 4)
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.snd_kcontrol* @snd_ctl_find_id(i32 %50, %struct.snd_ctl_elem_id* %6)
  store %struct.snd_kcontrol* %51, %struct.snd_kcontrol** %7, align 8
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %57 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %56, i32 0, i32 0
  %58 = call i32 @snd_ctl_notify(i32 %54, i32 %55, i32* %57)
  %59 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.psc724_spec*, %struct.psc724_spec** %5, align 8
  %62 = getelementptr inbounds %struct.psc724_spec, %struct.psc724_spec* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i64, i64* @WM8776_CTL_HP_SW, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strlcpy(i32 %60, i8* %68, i32 4)
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.snd_kcontrol* @snd_ctl_find_id(i32 %72, %struct.snd_ctl_elem_id* %6)
  store %struct.snd_kcontrol* %73, %struct.snd_kcontrol** %7, align 8
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %78 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %78, i32 0, i32 0
  %80 = call i32 @snd_ctl_notify(i32 %76, i32 %77, i32* %79)
  ret void
}

declare dso_local i32 @psc724_set_master_switch(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_wm8776_set_power(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(i32, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
