; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_read_midi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_read_midi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, %struct.amdtp_motu* }
%struct.amdtp_motu = type { i64, i32, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32)* @read_midi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_midi_messages(%struct.amdtp_stream* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdtp_motu*, align 8
  %8 = alloca %struct.snd_rawmidi_substream*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %12 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %11, i32 0, i32 1
  %13 = load %struct.amdtp_motu*, %struct.amdtp_motu** %12, align 8
  store %struct.amdtp_motu* %13, %struct.amdtp_motu** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %51, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %21 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %22)
  store %struct.snd_rawmidi_substream* %23, %struct.snd_rawmidi_substream** %8, align 8
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %8, align 8
  %25 = icmp ne %struct.snd_rawmidi_substream* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %29 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %39 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %36, i32* %42, i32 1)
  br label %44

44:                                               ; preds = %35, %26, %18
  %45 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %46 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %14

54:                                               ; preds = %14
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
