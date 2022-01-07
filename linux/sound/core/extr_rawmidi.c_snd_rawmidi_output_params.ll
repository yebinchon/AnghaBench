; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_output_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_output_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, i32, i32, i64 }
%struct.snd_rawmidi_params = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_output_params(%struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca %struct.snd_rawmidi_params*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store %struct.snd_rawmidi_params* %1, %struct.snd_rawmidi_params** %5, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %10, %2
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %20 = call i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream* %19)
  %21 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %33 = call i32 @resize_runtime_buffer(i32 %31, %struct.snd_rawmidi_params* %32, i32 0)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @resize_runtime_buffer(i32, %struct.snd_rawmidi_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
