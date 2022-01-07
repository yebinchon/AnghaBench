; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_sync_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_sync_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@SND_RME_CLOCK_NOLOCK = common dso_local global i32 0, align 4
@SND_RME_CLK_AES_SYNC = common dso_local global i32 0, align 4
@SND_RME_CLOCK_SYNC = common dso_local global i32 0, align 4
@SND_RME_CLK_AES_LOCK = common dso_local global i32 0, align 4
@SND_RME_CLOCK_LOCK = common dso_local global i32 0, align 4
@SND_RME_CLK_SPDIF_SYNC = common dso_local global i32 0, align 4
@SND_RME_CLK_SPDIF_LOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme_sync_state_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme_sync_state_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load i32, i32* @SND_RME_CLOCK_NOLOCK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call i32 @snd_rme_get_status1(%struct.snd_kcontrol* %10, i32* %6)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %52 [
    i32 129, label %20
    i32 128, label %36
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SND_RME_CLK_AES_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SND_RME_CLOCK_SYNC, align 4
  store i32 %26, i32* %7, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SND_RME_CLK_AES_LOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @SND_RME_CLOCK_LOCK, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %25
  br label %55

36:                                               ; preds = %16
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SND_RME_CLK_SPDIF_SYNC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @SND_RME_CLOCK_SYNC, align 4
  store i32 %42, i32* %7, align 4
  br label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SND_RME_CLK_SPDIF_LOCK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @SND_RME_CLOCK_LOCK, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %43
  br label %51

51:                                               ; preds = %50, %41
  br label %55

52:                                               ; preds = %16
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %56, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %52, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @snd_rme_get_status1(%struct.snd_kcontrol*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
