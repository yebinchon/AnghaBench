; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.snd_virmidi* }
%struct.snd_virmidi = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.snd_virmidi_dev* }
%struct.snd_virmidi_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_virmidi_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_input_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_virmidi_dev*, align 8
  %4 = alloca %struct.snd_virmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %8, align 8
  store %struct.snd_virmidi_dev* %9, %struct.snd_virmidi_dev** %3, align 8
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.snd_virmidi*, %struct.snd_virmidi** %13, align 8
  store %struct.snd_virmidi* %14, %struct.snd_virmidi** %4, align 8
  %15 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %16 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %19 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %18, i32 0, i32 1
  %20 = call i32 @write_lock_irq(i32* %19)
  %21 = load %struct.snd_virmidi*, %struct.snd_virmidi** %4, align 8
  %22 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %25 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %24, i32 0, i32 1
  %26 = call i32 @write_unlock_irq(i32* %25)
  %27 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %3, align 8
  %28 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %27, i32 0, i32 0
  %29 = call i32 @up_write(i32* %28)
  %30 = load %struct.snd_virmidi*, %struct.snd_virmidi** %4, align 8
  %31 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_midi_event_free(i32 %32)
  %34 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %35 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.snd_virmidi* null, %struct.snd_virmidi** %37, align 8
  %38 = load %struct.snd_virmidi*, %struct.snd_virmidi** %4, align 8
  %39 = call i32 @kfree(%struct.snd_virmidi* %38)
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @snd_midi_event_free(i32) #1

declare dso_local i32 @kfree(%struct.snd_virmidi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
