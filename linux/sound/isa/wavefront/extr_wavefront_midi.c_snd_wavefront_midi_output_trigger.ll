; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_midi.c_snd_wavefront_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32*, i32, i32, i32 }

@MPU401_MODE_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@snd_wavefront_midi_output_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_wavefront_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wavefront_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = icmp eq %struct.snd_rawmidi_substream* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %109

16:                                               ; preds = %10
  %17 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %109

24:                                               ; preds = %16
  %25 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %33 = call %struct.TYPE_7__* @get_wavefront_midi(%struct.snd_rawmidi_substream* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %6, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %109

36:                                               ; preds = %24
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MPU401_MODE_OUTPUT_TRIGGER, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* @snd_wavefront_midi_output_timer, align 4
  %62 = call i32 @timer_setup(i32* %60, i32 %61, i32 0)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* @jiffies, align 8
  %66 = add nsw i64 1, %65
  %67 = call i32 @mod_timer(i32* %64, i64 %66)
  br label %68

68:                                               ; preds = %58, %53
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @MPU401_MODE_OUTPUT_TRIGGER, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %73
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %68, %43
  br label %92

82:                                               ; preds = %36
  %83 = load i32, i32* @MPU401_MODE_OUTPUT_TRIGGER, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %84
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %82, %81
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %101 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = call i32 @snd_wavefront_midi_output_write(i32* %107)
  br label %109

109:                                              ; preds = %15, %23, %35, %99, %92
  ret void
}

declare dso_local %struct.TYPE_7__* @get_wavefront_midi(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_wavefront_midi_output_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
