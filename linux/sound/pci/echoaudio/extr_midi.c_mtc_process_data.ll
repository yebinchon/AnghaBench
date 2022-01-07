; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_mtc_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_mtc_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32 }

@MIDI_IN_SKIP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i16)* @mtc_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtc_process_data(%struct.echoaudio* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i16, align 2
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %28 [
    i32 130, label %9
    i32 129, label %17
    i32 128, label %21
    i32 131, label %25
  ]

9:                                                ; preds = %2
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, 241
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 0
  store i32 129, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  store i32 128, i32* %19, align 4
  %20 = load i32, i32* @MIDI_IN_SKIP_DATA, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %23 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %22, i32 0, i32 0
  store i32 131, i32* %23, align 4
  %24 = load i32, i32* @MIDI_IN_SKIP_DATA, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  store i32 130, i32* %27, align 4
  br label %28

28:                                               ; preds = %2, %25, %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %21, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
