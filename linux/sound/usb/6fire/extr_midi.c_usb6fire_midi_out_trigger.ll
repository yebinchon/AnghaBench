; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_midi.c_usb6fire_midi_out_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_midi.c_usb6fire_midi_out_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.midi_runtime* }
%struct.midi_runtime = type { i32, %struct.snd_rawmidi_substream*, i32, i64*, %struct.urb }
%struct.urb = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@MIDI_BUFSIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"midi out urb submit failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @usb6fire_midi_out_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_midi_out_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.midi_runtime*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.midi_runtime*, %struct.midi_runtime** %12, align 8
  store %struct.midi_runtime* %13, %struct.midi_runtime** %5, align 8
  %14 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %14, i32 0, i32 4
  store %struct.urb* %15, %struct.urb** %6, align 8
  %16 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %2
  %23 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %24 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %23, i32 0, i32 1
  %25 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %24, align 8
  %26 = icmp ne %struct.snd_rawmidi_substream* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %96

32:                                               ; preds = %22
  %33 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %34 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  %38 = load i64, i64* @MIDI_BUFSIZE, align 8
  %39 = sub nsw i64 %38, 4
  %40 = call i64 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %33, i64* %37, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 2
  %46 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %45, i64* %49, align 8
  %50 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  store i64 %54, i64* %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 4
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.urb*, %struct.urb** %6, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i64 @usb_submit_urb(%struct.urb* %63, i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %43
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %79

75:                                               ; preds = %43
  %76 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %77 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %78 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %77, i32 0, i32 1
  store %struct.snd_rawmidi_substream* %76, %struct.snd_rawmidi_substream** %78, align 8
  br label %79

79:                                               ; preds = %75, %68
  br label %80

80:                                               ; preds = %79, %32
  br label %91

81:                                               ; preds = %2
  %82 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %83 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %82, i32 0, i32 1
  %84 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %83, align 8
  %85 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %86 = icmp eq %struct.snd_rawmidi_substream* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %89 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %88, i32 0, i32 1
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %89, align 8
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %80
  %92 = load %struct.midi_runtime*, %struct.midi_runtime** %5, align 8
  %93 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %92, i32 0, i32 0
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i64*, i64) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
