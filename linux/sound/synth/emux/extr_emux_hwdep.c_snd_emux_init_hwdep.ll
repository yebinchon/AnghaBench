; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_hwdep.c_snd_emux_init_hwdep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_hwdep.c_snd_emux_init_hwdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, %struct.snd_hwdep*, i32 }
%struct.snd_hwdep = type { i32, %struct.snd_emux*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@SNDRV_EMUX_HWDEP_NAME = common dso_local global i32 0, align 4
@SNDRV_HWDEP_IFACE_EMUX_WAVETABLE = common dso_local global i32 0, align 4
@snd_emux_hwdep_ioctl = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_init_hwdep(%struct.snd_emux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux*, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %3, align 8
  %6 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SNDRV_EMUX_HWDEP_NAME, align 4
  %10 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %11 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snd_hwdep_new(i32 %8, i32 %9, i32 %12, %struct.snd_hwdep** %4)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %19 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 1
  store %struct.snd_hwdep* %18, %struct.snd_hwdep** %20, align 8
  %21 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %22 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SNDRV_EMUX_HWDEP_NAME, align 4
  %25 = call i32 @strcpy(i32 %23, i32 %24)
  %26 = load i32, i32* @SNDRV_HWDEP_IFACE_EMUX_WAVETABLE, align 4
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @snd_emux_hwdep_ioctl, align 8
  %30 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %31 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @snd_emux_hwdep_ioctl, align 8
  %34 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %35 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %38 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %40 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %41 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %40, i32 0, i32 1
  store %struct.snd_emux* %39, %struct.snd_emux** %41, align 8
  %42 = load %struct.snd_emux*, %struct.snd_emux** %3, align 8
  %43 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @snd_card_register(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %17
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @snd_hwdep_new(i32, i32, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_card_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
