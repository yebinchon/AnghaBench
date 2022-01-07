; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { i32, %struct.fw_spkr* }
%struct.fw_spkr = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @spkr_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spkr_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca %struct.fw_spkr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load %struct.snd_oxfw*, %struct.snd_oxfw** %11, align 8
  store %struct.snd_oxfw* %12, %struct.snd_oxfw** %6, align 8
  %13 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %14 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %13, i32 0, i32 1
  %15 = load %struct.fw_spkr*, %struct.fw_spkr** %14, align 8
  store %struct.fw_spkr* %15, %struct.fw_spkr** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %28 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %34 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %37 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CTL_WRITE, align 4
  %40 = call i32 @avc_audio_feature_mute(i32 %35, i32 %38, i32* %8, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %48 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @avc_audio_feature_mute(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
