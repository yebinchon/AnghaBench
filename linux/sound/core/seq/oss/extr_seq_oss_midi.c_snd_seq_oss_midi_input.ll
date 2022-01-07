; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_oss_devinfo = type { i64, i32* }
%struct.seq_oss_midi = type { i32, i32, i32 }

@PERM_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_MODE_MUSIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_input(%struct.snd_seq_event* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.seq_oss_devinfo*, align 8
  %9 = alloca %struct.seq_oss_midi*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.seq_oss_devinfo*
  store %struct.seq_oss_devinfo* %12, %struct.seq_oss_devinfo** %8, align 8
  %13 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %14 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %20 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %24 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.seq_oss_midi* @find_slot(i32 %22, i32 %26)
  store %struct.seq_oss_midi* %27, %struct.seq_oss_midi** %9, align 8
  %28 = icmp eq %struct.seq_oss_midi* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %64

30:                                               ; preds = %18
  %31 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %32 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PERM_READ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %39 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %38, i32 0, i32 1
  %40 = call i32 @snd_use_lock_free(i32* %39)
  store i32 0, i32* %4, align 4
  br label %64

41:                                               ; preds = %30
  %42 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %43 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_SEQ_OSS_MODE_MUSIC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %49 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %50 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %51 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @send_synth_event(%struct.seq_oss_devinfo* %48, %struct.snd_seq_event* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %56 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %57 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %58 = call i32 @send_midi_event(%struct.seq_oss_devinfo* %55, %struct.snd_seq_event* %56, %struct.seq_oss_midi* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %9, align 8
  %61 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %60, i32 0, i32 1
  %62 = call i32 @snd_use_lock_free(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %37, %29, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.seq_oss_midi* @find_slot(i32, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @send_synth_event(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32) #1

declare dso_local i32 @send_midi_event(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, %struct.seq_oss_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
