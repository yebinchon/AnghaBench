; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_mic_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_mic_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cs5535audio = type { %struct.snd_ac97* }
%struct.snd_ac97 = type { i32 }

@AC97_AD_MISC = common dso_local global i32 0, align 4
@AC97_AD_VREFD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @olpc_mic_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_mic_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cs5535audio*, align 8
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.cs5535audio* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.cs5535audio* %9, %struct.cs5535audio** %5, align 8
  %10 = load %struct.cs5535audio*, %struct.cs5535audio** %5, align 8
  %11 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %10, i32 0, i32 0
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %11, align 8
  store %struct.snd_ac97* %12, %struct.snd_ac97** %6, align 8
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %14 = load i32, i32* @AC97_AD_MISC, align 4
  %15 = call i32 @snd_ac97_read(%struct.snd_ac97* %13, i32 %14)
  %16 = load i32, i32* @AC97_AD_VREFD_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %22, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.cs5535audio* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
