; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_putc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%struct.snd_seq_event = type { i32 }
%struct.seq_oss_midi = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_putc(%struct.seq_oss_devinfo* %0, i32 %1, i8 zeroext %2, %struct.snd_seq_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_oss_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.snd_seq_event*, align 8
  %10 = alloca %struct.seq_oss_midi*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store %struct.snd_seq_event* %3, %struct.snd_seq_event** %9, align 8
  %11 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %11, i32 %12)
  store %struct.seq_oss_midi* %13, %struct.seq_oss_midi** %10, align 8
  %14 = icmp eq %struct.seq_oss_midi* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %10, align 8
  %20 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i8, i8* %8, align 1
  %23 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %24 = call i64 @snd_midi_event_encode_byte(i32 %21, i8 zeroext %22, %struct.snd_seq_event* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %6, align 8
  %28 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %29 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %10, align 8
  %30 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %10, align 8
  %33 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo* %27, %struct.snd_seq_event* %28, i32 %31, i32 %34)
  %36 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %10, align 8
  %37 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %36, i32 0, i32 0
  %38 = call i32 @snd_use_lock_free(i32* %37)
  store i32 0, i32* %5, align 4
  br label %45

39:                                               ; preds = %18
  %40 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %10, align 8
  %41 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %40, i32 0, i32 0
  %42 = call i32 @snd_use_lock_free(i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %26, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i64 @snd_midi_event_encode_byte(i32, i8 zeroext, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_fill_addr(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
