; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_rpn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_rpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 }
%struct.snd_midi_channel = type { i32*, i32, i32, i32 }
%struct.snd_midi_channel_set = type { i64 }

@SNDRV_MIDI_MODE_NONE = common dso_local global i64 0, align 8
@MIDI_CTL_REGIST_PARM_NUM_MSB = common dso_local global i64 0, align 8
@MIDI_CTL_REGIST_PARM_NUM_LSB = common dso_local global i64 0, align 8
@MIDI_CTL_MSB_DATA_ENTRY = common dso_local global i64 0, align 8
@MIDI_CTL_LSB_DATA_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel*, %struct.snd_midi_channel_set*)* @rpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpn(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel* %2, %struct.snd_midi_channel_set* %3) #0 {
  %5 = alloca %struct.snd_midi_op*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_midi_channel*, align 8
  %8 = alloca %struct.snd_midi_channel_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %7, align 8
  store %struct.snd_midi_channel_set* %3, %struct.snd_midi_channel_set** %8, align 8
  %11 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %8, align 8
  %12 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_MIDI_MODE_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %4
  %17 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %18 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @MIDI_CTL_REGIST_PARM_NUM_MSB, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %25 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @MIDI_CTL_REGIST_PARM_NUM_LSB, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %23, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %32 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @MIDI_CTL_MSB_DATA_ENTRY, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 7
  %38 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %39 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @MIDI_CTL_LSB_DATA_ENTRY, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %37, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %61 [
    i32 0, label %46
    i32 1, label %50
    i32 2, label %55
    i32 32639, label %60
  ]

46:                                               ; preds = %16
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %49 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %61

50:                                               ; preds = %16
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 8192
  %53 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %54 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %61

55:                                               ; preds = %16
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 8192
  %58 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  %59 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %61

60:                                               ; preds = %16
  br label %61

61:                                               ; preds = %16, %60, %55, %50, %46
  br label %62

62:                                               ; preds = %61, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
