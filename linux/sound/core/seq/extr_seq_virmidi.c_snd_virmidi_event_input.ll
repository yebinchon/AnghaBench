; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_event_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_event_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i32 }
%struct.snd_virmidi_dev = type { i32 }

@SNDRV_VIRMIDI_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, i32, i8*, i32, i32)* @snd_virmidi_event_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_event_input(%struct.snd_seq_event* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_virmidi_dev*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.snd_virmidi_dev*
  store %struct.snd_virmidi_dev* %14, %struct.snd_virmidi_dev** %12, align 8
  %15 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %12, align 8
  %16 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SNDRV_VIRMIDI_USE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %27

22:                                               ; preds = %5
  %23 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %12, align 8
  %24 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @snd_virmidi_dev_receive_event(%struct.snd_virmidi_dev* %23, %struct.snd_seq_event* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @snd_virmidi_dev_receive_event(%struct.snd_virmidi_dev*, %struct.snd_seq_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
