; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_handle_midi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_ff400_handle_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32* }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ff*, i32, i32*, i64)* @ff400_handle_midi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff400_handle_midi_msg(%struct.snd_ff* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.snd_ff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.snd_ff* %0, %struct.snd_ff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %70, %4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %8, align 8
  %18 = udiv i64 %17, 4
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %20
  %33 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %37)
  store %struct.snd_rawmidi_substream* %38, %struct.snd_rawmidi_substream** %13, align 8
  %39 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %13, align 8
  %40 = icmp ne %struct.snd_rawmidi_substream* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %11, align 4
  %44 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %13, align 8
  %45 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %44, i32* %11, i32 1)
  br label %46

46:                                               ; preds = %41, %32
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.snd_rawmidi_substream* @READ_ONCE(i32 %58)
  store %struct.snd_rawmidi_substream* %59, %struct.snd_rawmidi_substream** %13, align 8
  %60 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %13, align 8
  %61 = icmp ne %struct.snd_rawmidi_substream* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  store i32 %65, i32* %11, align 4
  %66 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %13, align 8
  %67 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %66, i32* %11, i32 1)
  br label %68

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %14

73:                                               ; preds = %14
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
