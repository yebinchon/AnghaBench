; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime*, %struct.TYPE_2__* }
%struct.snd_rawmidi_runtime = type { %struct.snd_virmidi* }
%struct.snd_virmidi = type { %struct.snd_virmidi_dev*, i32, i32, i32, i32, i32, %struct.snd_rawmidi_substream* }
%struct.snd_virmidi_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.snd_virmidi_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_virmidi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_virmidi_dev*, align 8
  %5 = alloca %struct.snd_rawmidi_runtime*, align 8
  %6 = alloca %struct.snd_virmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %10, align 8
  store %struct.snd_virmidi_dev* %11, %struct.snd_virmidi_dev** %4, align 8
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %13, align 8
  store %struct.snd_rawmidi_runtime* %14, %struct.snd_rawmidi_runtime** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_virmidi* @kzalloc(i32 40, i32 %15)
  store %struct.snd_virmidi* %16, %struct.snd_virmidi** %6, align 8
  %17 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %18 = icmp eq %struct.snd_virmidi* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %24 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %25 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %24, i32 0, i32 6
  store %struct.snd_rawmidi_substream* %23, %struct.snd_rawmidi_substream** %25, align 8
  %26 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %27 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %26, i32 0, i32 5
  %28 = call i64 @snd_midi_event_new(i32 0, i32* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %32 = call i32 @kfree(%struct.snd_virmidi* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %74

35:                                               ; preds = %22
  %36 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %40 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %42 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %45 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %47 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %50 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %52 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %52, i32 0, i32 0
  store %struct.snd_virmidi* %51, %struct.snd_virmidi** %53, align 8
  %54 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %55 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %54, i32 0, i32 0
  %56 = call i32 @down_write(i32* %55)
  %57 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %58 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %57, i32 0, i32 1
  %59 = call i32 @write_lock_irq(i32* %58)
  %60 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %61 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %60, i32 0, i32 1
  %62 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %63 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %62, i32 0, i32 2
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %66 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %65, i32 0, i32 1
  %67 = call i32 @write_unlock_irq(i32* %66)
  %68 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %69 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %68, i32 0, i32 0
  %70 = call i32 @up_write(i32* %69)
  %71 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %72 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %73 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %72, i32 0, i32 0
  store %struct.snd_virmidi_dev* %71, %struct.snd_virmidi_dev** %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %35, %30, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.snd_virmidi* @kzalloc(i32, i32) #1

declare dso_local i64 @snd_midi_event_new(i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_virmidi*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
