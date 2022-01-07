; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_reset_port_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_reset_port_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_EMUX_PORT_MODE_OSS_MIDI = common dso_local global i32 0, align 4
@DEFAULT_DRUM_FLAGS = common dso_local global i64 0, align 8
@SNDRV_SEQ_OSS_PROCESS_KEYPRESS = common dso_local global i32 0, align 4
@SNDRV_EMUX_PORT_MODE_OSS_SYNTH = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_PROCESS_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_port*, i32)* @reset_port_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_port_mode(%struct.snd_emux_port* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emux_port*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @SNDRV_EMUX_PORT_MODE_OSS_MIDI, align 4
  %9 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %10 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @DEFAULT_DRUM_FLAGS, align 8
  %12 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %15 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* @SNDRV_SEQ_OSS_PROCESS_KEYPRESS, align 4
  %17 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %18 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @SNDRV_EMUX_PORT_MODE_OSS_SYNTH, align 4
  %23 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %24 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %26 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %27, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load i32, i32* @SNDRV_SEQ_OSS_PROCESS_EVENTS, align 4
  %30 = load %struct.snd_emux_port*, %struct.snd_emux_port** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %21, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
