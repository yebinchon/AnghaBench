; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_write_midi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_write_midi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, %struct.amdtp_motu* }
%struct.amdtp_motu = type { i64, i32, i64, i64, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32)* @write_midi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_midi_messages(%struct.amdtp_stream* %0, i32* %1, i32 %2) #0 {
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
  %14 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %15 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %16)
  store %struct.snd_rawmidi_substream* %17, %struct.snd_rawmidi_substream** %8, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %78, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %9, align 8
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %8, align 8
  %25 = icmp ne %struct.snd_rawmidi_substream* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %28 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %35 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %32, i32* %38, i32 1)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %44 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 1, i32* %46, align 4
  br label %59

47:                                               ; preds = %31, %26, %22
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %50 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %56 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %47, %41
  %60 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %61 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %5, align 8
  %66 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %67 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %73 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.amdtp_motu*, %struct.amdtp_motu** %7, align 8
  %76 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %18

81:                                               ; preds = %18
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
