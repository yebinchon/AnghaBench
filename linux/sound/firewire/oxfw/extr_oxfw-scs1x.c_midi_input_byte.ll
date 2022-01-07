; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_input_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_scs1x = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@sysex_escape_prefix = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_scs1x*, %struct.snd_rawmidi_substream*, i32)* @midi_input_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_input_byte(%struct.fw_scs1x* %0, %struct.snd_rawmidi_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_scs1x*, align 8
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fw_scs1x* %0, %struct.fw_scs1x** %4, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 247, i32* %7, align 4
  %8 = load %struct.fw_scs1x*, %struct.fw_scs1x** %4, align 8
  %9 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream* %13, i32 %14)
  %16 = load %struct.fw_scs1x*, %struct.fw_scs1x** %4, align 8
  %17 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.fw_scs1x*, %struct.fw_scs1x** %4, align 8
  %21 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %26 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %25, i32* %7, i32 4)
  br label %27

27:                                               ; preds = %24, %12
  br label %47

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 249
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %33 = load i32*, i32** @sysex_escape_prefix, align 8
  %34 = load i32*, i32** @sysex_escape_prefix, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %32, i32* %33, i32 %35)
  %37 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %38 = call i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream* %37, i32 0)
  %39 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %40 = call i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream* %39, i32 249)
  %41 = load %struct.fw_scs1x*, %struct.fw_scs1x** %4, align 8
  %42 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %41, i32 0, i32 0
  store i32 3, i32* %42, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %45 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %44, i32* %6, i32 1)
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %27
  ret void
}

declare dso_local i32 @midi_input_escaped_byte(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
