; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { %struct.fw_spkr* }
%struct.fw_spkr = type { i32, i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@channel_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @spkr_volume_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spkr_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_oxfw*, align 8
  %6 = alloca %struct.fw_spkr*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load %struct.snd_oxfw*, %struct.snd_oxfw** %9, align 8
  store %struct.snd_oxfw* %10, %struct.snd_oxfw** %5, align 8
  %11 = load %struct.snd_oxfw*, %struct.snd_oxfw** %5, align 8
  %12 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %11, i32 0, i32 0
  %13 = load %struct.fw_spkr*, %struct.fw_spkr** %12, align 8
  store %struct.fw_spkr* %13, %struct.fw_spkr** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %17 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %22 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64*, i64** @channel_map, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32 %27, i32* %38, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %14

42:                                               ; preds = %14
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
