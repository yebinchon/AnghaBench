; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_midi.c_usb6fire_midi_out_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_midi.c_usb6fire_midi_out_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_2__*, %struct.midi_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.midi_runtime = type { i32*, i32, i32*, i32 }

@MIDI_BUFSIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"midi out urb submit failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb6fire_midi_out_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_midi_out_handler(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.midi_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.midi_runtime*, %struct.midi_runtime** %7, align 8
  store %struct.midi_runtime* %8, %struct.midi_runtime** %3, align 8
  %9 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %1
  %18 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i64, i64* @MIDI_BUFSIZE, align 8
  %26 = sub nsw i64 %25, 4
  %27 = call i32 @snd_rawmidi_transmit(i32* %20, i32* %24, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2
  %33 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %34 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %42 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 4
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @usb_submit_urb(%struct.urb* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %30
  %55 = load %struct.urb*, %struct.urb** %2, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %30
  br label %65

62:                                               ; preds = %17
  %63 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %64 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %62, %61
  br label %66

66:                                               ; preds = %65, %1
  %67 = load %struct.midi_runtime*, %struct.midi_runtime** %3, align 8
  %68 = getelementptr inbounds %struct.midi_runtime, %struct.midi_runtime* %67, i32 0, i32 1
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_rawmidi_transmit(i32*, i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
