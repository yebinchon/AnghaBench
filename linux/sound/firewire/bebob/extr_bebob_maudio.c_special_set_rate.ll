; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, i32, %struct.special_params* }
%struct.special_params = type { i64 }

@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32)* @special_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_set_rate(%struct.snd_bebob* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.special_params*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %8 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %7, i32 0, i32 2
  %9 = load %struct.special_params*, %struct.special_params** %8, align 8
  store %struct.special_params* %9, %struct.special_params** %5, align 8
  %10 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %11 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %15 = call i32 @avc_general_set_sig_fmt(i32 %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %45

19:                                               ; preds = %2
  %20 = call i32 @msleep(i32 100)
  %21 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %22 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %26 = call i32 @avc_general_set_sig_fmt(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %45

30:                                               ; preds = %19
  %31 = load %struct.special_params*, %struct.special_params** %5, align 8
  %32 = getelementptr inbounds %struct.special_params, %struct.special_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %37 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %40 = load %struct.special_params*, %struct.special_params** %5, align 8
  %41 = getelementptr inbounds %struct.special_params, %struct.special_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @snd_ctl_notify(i32 %38, i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  br label %45

45:                                               ; preds = %44, %29, %18
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @avc_general_set_sig_fmt(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
