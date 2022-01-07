; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_all_notes_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_emul.c_all_notes_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 }
%struct.snd_midi_channel = type { i64* }

@SNDRV_MIDI_NOTE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_op*, i8*, %struct.snd_midi_channel*)* @all_notes_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_notes_off(%struct.snd_midi_op* %0, i8* %1, %struct.snd_midi_channel* %2) #0 {
  %4 = alloca %struct.snd_midi_op*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %6, align 8
  %8 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %9 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %37

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %19 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_MIDI_NOTE_ON, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @note_off(%struct.snd_midi_op* %28, i8* %29, %struct.snd_midi_channel* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %27, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @note_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
