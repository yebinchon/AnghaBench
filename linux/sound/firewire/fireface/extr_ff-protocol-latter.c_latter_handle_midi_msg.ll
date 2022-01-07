; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_handle_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_handle_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, i32, i32*, i64)* @latter_handle_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latter_handle_midi_msg(%struct.snd_ff* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.snd_ff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.snd_rawmidi_substream*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %68

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 15
  switch i32 %30, label %33 [
    i32 8, label %31
    i32 9, label %31
    i32 10, label %31
    i32 11, label %31
    i32 14, label %31
    i32 12, label %32
    i32 13, label %32
  ]

31:                                               ; preds = %28, %28, %28, %28, %28
  store i32 3, i32* %13, align 4
  br label %40

32:                                               ; preds = %28, %28
  store i32 2, i32* %13, align 4
  br label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 3
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 3, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %32, %31
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 65280
  %43 = ashr i32 %42, 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 16711680
  %47 = ashr i32 %46, 16
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -16777216
  %51 = lshr i32 %50, 24
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %59)
  store %struct.snd_rawmidi_substream* %60, %struct.snd_rawmidi_substream** %12, align 8
  %61 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %62 = icmp ne %struct.snd_rawmidi_substream* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %40
  %64 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %12, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %27, %63, %40
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
