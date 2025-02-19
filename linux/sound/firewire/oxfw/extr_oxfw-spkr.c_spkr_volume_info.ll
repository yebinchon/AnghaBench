; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { %struct.fw_spkr* }
%struct.fw_spkr = type { i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @spkr_volume_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spkr_volume_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_oxfw*, align 8
  %6 = alloca %struct.fw_spkr*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load %struct.snd_oxfw*, %struct.snd_oxfw** %8, align 8
  store %struct.snd_oxfw* %9, %struct.snd_oxfw** %5, align 8
  %10 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %11 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %10, i32 0, i32 0
  %12 = load %struct.fw_spkr*, %struct.fw_spkr** %11, align 8
  store %struct.fw_spkr* %12, %struct.fw_spkr** %6, align 8
  %13 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %14 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %17 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %22 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %29 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
