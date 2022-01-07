; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hdspm_midi* }
%struct.hdspm_midi = type { i64, i32, i32 }

@snd_hdspm_midi_output_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_hdspm_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdspm_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hdspm_midi*, %struct.hdspm_midi** %10, align 8
  store %struct.hdspm_midi* %11, %struct.hdspm_midi** %5, align 8
  %12 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %13 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %20 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %25 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %24, i32 0, i32 2
  %26 = load i32, i32* @snd_hdspm_midi_output_timer, align 4
  %27 = call i32 @timer_setup(i32* %25, i32 %26, i32 0)
  %28 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %29 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %28, i32 0, i32 2
  %30 = load i64, i64* @jiffies, align 8
  %31 = add nsw i64 1, %30
  %32 = call i32 @mod_timer(i32* %29, i64 %31)
  %33 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %34 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %23, %18
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %40 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %45 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %51 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %50, i32 0, i32 2
  %52 = call i32 @del_timer(i32* %51)
  br label %53

53:                                               ; preds = %49, %43, %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %56 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %55, i32 0, i32 1
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %63 = call i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi* %62)
  br label %64

64:                                               ; preds = %61, %54
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
