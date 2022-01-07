; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.echoaudio* }
%struct.echoaudio = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"snd_echo_midi_output_trigger(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Timer removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_echo_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_echo_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.echoaudio*, %struct.echoaudio** %9, align 8
  store %struct.echoaudio* %10, %struct.echoaudio** %5, align 8
  %11 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %25 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  %31 = call i32 @timer_setup(i32* %30, i32 (i32*)* @snd_echo_midi_output_write, i32 0)
  %32 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 3
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %47 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %46, i32 0, i32 1
  %48 = call i32 @del_timer_sync(i32* %47)
  %49 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %71

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 3
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %69 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %68, i32 0, i32 1
  %70 = call i32 @snd_echo_midi_output_write(i32* %69)
  br label %71

71:                                               ; preds = %40, %67, %62, %56
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32 (i32*)*, i32) #1

declare dso_local i32 @snd_echo_midi_output_write(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
