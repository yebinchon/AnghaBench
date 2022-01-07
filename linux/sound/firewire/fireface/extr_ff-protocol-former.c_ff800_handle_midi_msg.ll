; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_handle_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff800_handle_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32* }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, i32, i32*, i64)* @ff800_handle_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff800_handle_midi_msg(%struct.snd_ff* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.snd_ff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.snd_ff* %0, %struct.snd_ff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %8, align 8
  %16 = udiv i64 %15, 4
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = and i32 %24, 255
  store i32 %25, i32* %10, align 4
  %26 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %30)
  store %struct.snd_rawmidi_substream* %31, %struct.snd_rawmidi_substream** %11, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %33 = icmp ne %struct.snd_rawmidi_substream* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %36 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %35, i32* %10, i32 1)
  br label %37

37:                                               ; preds = %34, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.snd_rawmidi_substream* @READ_ONCE(i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
