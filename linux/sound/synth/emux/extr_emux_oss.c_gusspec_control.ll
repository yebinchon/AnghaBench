; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_gusspec_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_gusspec_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32 }
%struct.snd_emux_port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_midi_channel* }
%struct.snd_midi_channel = type { i16, i32* }

@SNDRV_EMUX_PORT_MODE_OSS_SYNTH = common dso_local global i64 0, align 8
@_GUS_NUMVOICES = common dso_local global i32 0, align 4
@MIDI_CTL_MSB_PAN = common dso_local global i64 0, align 8
@SNDRV_EMUX_UPDATE_PAN = common dso_local global i32 0, align 4
@EMUX_FX_COARSE_SAMPLE_START = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_SET = common dso_local global i32 0, align 4
@EMUX_FX_SAMPLE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emux_port*, i32, i8*, i32, i32)* @gusspec_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gusspec_control(%struct.snd_emux* %0, %struct.snd_emux_port* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca %struct.snd_emux_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_midi_channel*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %7, align 8
  store %struct.snd_emux_port* %1, %struct.snd_emux_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %18 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_EMUX_PORT_MODE_OSS_SYNTH, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %81

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @_GUS_NUMVOICES, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %81

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %38 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %28
  br label %81

43:                                               ; preds = %35
  %44 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %45 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %47, i64 %49
  store %struct.snd_midi_channel* %50, %struct.snd_midi_channel** %16, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = bitcast i8* %52 to i16*
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %14, align 2
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %81 [
    i32 132, label %60
    i32 133, label %64
    i32 131, label %77
    i32 130, label %77
    i32 135, label %78
    i32 134, label %78
    i32 138, label %78
    i32 136, label %78
    i32 137, label %78
    i32 128, label %79
    i32 129, label %80
  ]

60:                                               ; preds = %43
  %61 = load i16, i16* %14, align 2
  %62 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %16, align 8
  %63 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %62, i32 0, i32 0
  store i16 %61, i16* %63, align 8
  br label %81

64:                                               ; preds = %43
  %65 = load i16, i16* %14, align 2
  %66 = zext i16 %65 to i32
  %67 = shl i32 %66, 3
  %68 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %16, align 8
  %69 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @MIDI_CTL_MSB_PAN, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %74 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %16, align 8
  %75 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %76 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %73, %struct.snd_midi_channel* %74, i32 %75)
  br label %81

77:                                               ; preds = %43, %43
  br label %81

78:                                               ; preds = %43, %43, %43, %43, %43
  br label %81

79:                                               ; preds = %43
  br label %81

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %22, %27, %42, %60, %64, %77, %78, %79, %80, %43
  ret void
}

declare dso_local i32 @snd_emux_update_channel(%struct.snd_emux_port*, %struct.snd_midi_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
