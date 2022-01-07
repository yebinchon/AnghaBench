; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_packet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_scs1x = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@HSS1394_TAG_USER_DATA = common dso_local global i32 0, align 4
@sysex_escape_prefix = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_scs1x*, %struct.snd_rawmidi_substream*, i32*, i32)* @midi_input_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_input_packet(%struct.fw_scs1x* %0, %struct.snd_rawmidi_substream* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.fw_scs1x*, align 8
  %6 = alloca %struct.snd_rawmidi_substream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_scs1x* %0, %struct.fw_scs1x** %5, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 247, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HSS1394_TAG_USER_DATA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %23 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @midi_input_byte(%struct.fw_scs1x* %22, %struct.snd_rawmidi_substream* %23, i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %17

33:                                               ; preds = %17
  br label %58

34:                                               ; preds = %4
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %36 = load i32*, i32** @sysex_escape_prefix, align 8
  %37 = load i32*, i32** @sysex_escape_prefix, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %35, i32* %36, i32 %38)
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %52, %34
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream* %45, i32 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %57 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %56, i32* %10, i32 4)
  br label %58

58:                                               ; preds = %55, %33
  ret void
}

declare dso_local i32 @midi_input_byte(%struct.fw_scs1x*, %struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
