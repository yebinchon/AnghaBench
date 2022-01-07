; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_current_freq_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_rme_current_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.usb_mixer_elem_list = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@SND_RME_GET_STATUS1 = common dso_local global i32 0, align 4
@SND_RME_GET_CURRENT_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme_current_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme_current_freq_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.usb_mixer_elem_list*, align 8
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.usb_mixer_elem_list* %14, %struct.usb_mixer_elem_list** %6, align 8
  %15 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %6, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %18, align 8
  store %struct.snd_usb_audio* %19, %struct.snd_usb_audio** %7, align 8
  store i64 104857600000000, i64* %9, align 8
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %21 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %28 = load i32, i32* @SND_RME_GET_STATUS1, align 4
  %29 = call i32 @snd_rme_read_value(%struct.snd_usb_audio* %27, i32 %28, i64* %8)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %60

33:                                               ; preds = %26
  %34 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %35 = load i32, i32* @SND_RME_GET_CURRENT_FREQ, align 4
  %36 = call i32 @snd_rme_read_value(%struct.snd_usb_audio* %34, i32 %35, i64* %10)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %60

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @div64_u64(i64 104857600000000, i64 %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @SND_RME_CLK_FREQMUL(i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %47, %39, %32
  %61 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %62 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.usb_mixer_elem_list* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_rme_read_value(%struct.snd_usb_audio*, i32, i64*) #1

declare dso_local i32 @div64_u64(i64, i64) #1

declare dso_local i32 @SND_RME_CLK_FREQMUL(i64) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
