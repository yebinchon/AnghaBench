; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_set_chan_mix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_set_chan_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }

@CHAN_MIX_NORMAL = common dso_local global i8 0, align 1
@CHAN_MIX_BOTH = common dso_local global i8 0, align 1
@CHAN_MIX_SWAP = common dso_local global i8 0, align 1
@CS42L51_PCM_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cs42l51_set_chan_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l51_set_chan_mix(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
  ]

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %16
  %18 = load i8, i8* @CHAN_MIX_NORMAL, align 1
  store i8 %18, i8* %6, align 1
  br label %23

19:                                               ; preds = %2
  %20 = load i8, i8* @CHAN_MIX_BOTH, align 1
  store i8 %20, i8* %6, align 1
  br label %23

21:                                               ; preds = %2
  %22 = load i8, i8* @CHAN_MIX_SWAP, align 1
  store i8 %22, i8* %6, align 1
  br label %23

23:                                               ; preds = %21, %19, %17
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = load i32, i32* @CS42L51_PCM_MIXER, align 4
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %24, i32 %25, i8 zeroext %26)
  ret i32 1
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
