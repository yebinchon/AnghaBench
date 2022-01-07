; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_active_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_active_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.loopback = type { i32, %struct.loopback_cable*** }
%struct.loopback_cable = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @loopback_active_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_active_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.loopback*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.loopback* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.loopback* %10, %struct.loopback** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.loopback*, %struct.loopback** %5, align 8
  %12 = getelementptr inbounds %struct.loopback, %struct.loopback* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.loopback*, %struct.loopback** %5, align 8
  %15 = getelementptr inbounds %struct.loopback, %struct.loopback* %14, i32 0, i32 1
  %16 = load %struct.loopback_cable***, %struct.loopback_cable**** %15, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %16, i64 %20
  %22 = load %struct.loopback_cable**, %struct.loopback_cable*** %21, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %22, i64 %28
  %30 = load %struct.loopback_cable*, %struct.loopback_cable** %29, align 8
  store %struct.loopback_cable* %30, %struct.loopback_cable** %6, align 8
  %31 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %32 = icmp ne %struct.loopback_cable* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %35 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %38 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %33, %2
  %49 = load %struct.loopback*, %struct.loopback** %5, align 8
  %50 = getelementptr inbounds %struct.loopback, %struct.loopback* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %52, i32* %58, align 4
  ret i32 0
}

declare dso_local %struct.loopback* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
