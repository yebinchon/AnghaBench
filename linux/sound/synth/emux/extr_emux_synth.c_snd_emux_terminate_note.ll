; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_terminate_note.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_terminate_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32 }
%struct.snd_emux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_emux_port = type { %struct.snd_emux* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_terminate_note(i8* %0, i32 %1, %struct.snd_midi_channel* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca %struct.snd_emux_port*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %10, %struct.snd_emux_port** %8, align 8
  %11 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %12 = icmp ne %struct.snd_emux_port* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %15 = icmp ne %struct.snd_midi_channel* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %47

23:                                               ; preds = %17
  %24 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %25 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %24, i32 0, i32 0
  %26 = load %struct.snd_emux*, %struct.snd_emux** %25, align 8
  store %struct.snd_emux* %26, %struct.snd_emux** %7, align 8
  %27 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %28 = icmp ne %struct.snd_emux* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %31 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i1 [ true, %23 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %46 = call i32 @terminate_note1(%struct.snd_emux* %43, i32 %44, %struct.snd_midi_channel* %45, i32 1)
  br label %47

47:                                               ; preds = %42, %41, %22
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @terminate_note1(%struct.snd_emux*, i32, %struct.snd_midi_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
