; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_saturation_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_mixer.c_vx_saturation_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.vx_core = type { i32 }
%struct.vx_vu_meter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_saturation_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_saturation_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca [2 x %struct.vx_vu_meter], align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.vx_core* %9, %struct.vx_core** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %7, align 4
  %14 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds [2 x %struct.vx_vu_meter], [2 x %struct.vx_vu_meter]* %6, i64 0, i64 0
  %17 = call i32 @vx_get_audio_vu_meter(%struct.vx_core* %14, i32 %15, i32 1, %struct.vx_vu_meter* %16)
  %18 = getelementptr inbounds [2 x %struct.vx_vu_meter], [2 x %struct.vx_vu_meter]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %20, i32* %26, align 4
  %27 = getelementptr inbounds [2 x %struct.vx_vu_meter], [2 x %struct.vx_vu_meter]* %6, i64 0, i64 1
  %28 = getelementptr inbounds %struct.vx_vu_meter, %struct.vx_vu_meter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %29, i32* %35, align 4
  ret i32 0
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @vx_get_audio_vu_meter(%struct.vx_core*, i32, i32, %struct.vx_vu_meter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
