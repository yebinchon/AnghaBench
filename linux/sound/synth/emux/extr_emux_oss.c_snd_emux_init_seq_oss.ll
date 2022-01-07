; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_init_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_snd_emux_init_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, i32, %struct.snd_seq_device* }
%struct.snd_seq_device = type { i32 }
%struct.snd_seq_oss_reg = type { %struct.snd_emux*, i32, i32, i32, i32 }

@SNDRV_SEQ_DEV_ID_OSS = common dso_local global i32 0, align 4
@SYNTH_TYPE_SAMPLE = common dso_local global i32 0, align 4
@SAMPLE_TYPE_AWE32 = common dso_local global i32 0, align 4
@oss_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_init_seq_oss(%struct.snd_emux* %0) #0 {
  %2 = alloca %struct.snd_emux*, align 8
  %3 = alloca %struct.snd_seq_oss_reg*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %2, align 8
  %5 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SNDRV_SEQ_DEV_ID_OSS, align 4
  %9 = call i64 @snd_seq_device_new(i32 %7, i32 1, i32 %8, i32 24, %struct.snd_seq_device** %4)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %14 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %15 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %14, i32 0, i32 3
  store %struct.snd_seq_device* %13, %struct.snd_seq_device** %15, align 8
  %16 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %20 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strcpy(i32 %18, i32 %21)
  %23 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %24 = call %struct.snd_seq_oss_reg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %23)
  store %struct.snd_seq_oss_reg* %24, %struct.snd_seq_oss_reg** %3, align 8
  %25 = load i32, i32* @SYNTH_TYPE_SAMPLE, align 4
  %26 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %3, align 8
  %27 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SAMPLE_TYPE_AWE32, align 4
  %29 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %3, align 8
  %30 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %3, align 8
  %35 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @oss_callback, align 4
  %37 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %3, align 8
  %38 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %40 = load %struct.snd_seq_oss_reg*, %struct.snd_seq_oss_reg** %3, align 8
  %41 = getelementptr inbounds %struct.snd_seq_oss_reg, %struct.snd_seq_oss_reg* %40, i32 0, i32 0
  store %struct.snd_emux* %39, %struct.snd_emux** %41, align 8
  %42 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %43 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %46 = call i32 @snd_device_register(i32 %44, %struct.snd_seq_device* %45)
  br label %47

47:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @snd_seq_device_new(i32, i32, i32, i32, %struct.snd_seq_device**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.snd_seq_oss_reg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i32 @snd_device_register(i32, %struct.snd_seq_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
