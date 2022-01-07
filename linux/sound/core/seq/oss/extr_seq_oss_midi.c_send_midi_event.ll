; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_send_midi_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_send_midi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_seq_event = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.seq_oss_midi = type { i32, i32 }

@SNDRV_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %struct.snd_seq_event*, %struct.seq_oss_midi*)* @send_midi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_midi_event(%struct.seq_oss_devinfo* %0, %struct.snd_seq_event* %1, %struct.seq_oss_midi* %2) #0 {
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca %struct.seq_oss_midi*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  store %struct.seq_oss_midi* %2, %struct.seq_oss_midi** %6, align 8
  %9 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %10 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %13 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %17 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snd_seq_oss_readq_put_timestamp(i32 %11, i32 %15, i32 %18)
  %20 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %21 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %28 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @snd_seq_oss_timer_start(%struct.TYPE_4__* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %33 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_SEQ_EVENT_SYSEX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %39 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %42 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %45 = call i32 @snd_seq_oss_readq_sysex(i32 %40, i32 %43, %struct.snd_seq_event* %44)
  br label %66

46:                                               ; preds = %31
  %47 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %48 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %51 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %52 = call i32 @snd_midi_event_decode(i32 %49, i8* %50, i32 32, %struct.snd_seq_event* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %57 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %6, align 8
  %60 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @snd_seq_oss_readq_puts(i32 %58, i32 %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %46
  br label %66

66:                                               ; preds = %65, %37
  ret i32 0
}

declare dso_local i32 @snd_seq_oss_readq_put_timestamp(i32, i32, i32) #1

declare dso_local i32 @snd_seq_oss_timer_start(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_seq_oss_readq_sysex(i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_midi_event_decode(i32, i8*, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_readq_puts(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
