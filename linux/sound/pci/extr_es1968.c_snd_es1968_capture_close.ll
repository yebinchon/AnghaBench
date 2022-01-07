; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_capture_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.esschan* }
%struct.esschan = type { i32*, i32, i32 }
%struct.es1968 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1968_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca %struct.esschan*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.es1968* %7, %struct.es1968** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.esschan*, %struct.esschan** %11, align 8
  %13 = icmp eq %struct.esschan* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.esschan*, %struct.esschan** %19, align 8
  store %struct.esschan* %20, %struct.esschan** %5, align 8
  %21 = load %struct.es1968*, %struct.es1968** %4, align 8
  %22 = getelementptr inbounds %struct.es1968, %struct.es1968* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.esschan*, %struct.esschan** %5, align 8
  %25 = getelementptr inbounds %struct.esschan, %struct.esschan* %24, i32 0, i32 2
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.es1968*, %struct.es1968** %4, align 8
  %28 = getelementptr inbounds %struct.es1968, %struct.es1968* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.es1968*, %struct.es1968** %4, align 8
  %31 = load %struct.esschan*, %struct.esschan** %5, align 8
  %32 = getelementptr inbounds %struct.esschan, %struct.esschan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snd_es1968_free_memory(%struct.es1968* %30, i32 %33)
  %35 = load %struct.es1968*, %struct.es1968** %4, align 8
  %36 = load %struct.esschan*, %struct.esschan** %5, align 8
  %37 = getelementptr inbounds %struct.esschan, %struct.esschan* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %35, i32 %40)
  %42 = load %struct.es1968*, %struct.es1968** %4, align 8
  %43 = load %struct.esschan*, %struct.esschan** %5, align 8
  %44 = getelementptr inbounds %struct.esschan, %struct.esschan* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_es1968_free_apu_pair(%struct.es1968* %42, i32 %47)
  %49 = load %struct.esschan*, %struct.esschan** %5, align 8
  %50 = call i32 @kfree(%struct.esschan* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %15, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_es1968_free_memory(%struct.es1968*, i32) #1

declare dso_local i32 @snd_es1968_free_apu_pair(%struct.es1968*, i32) #1

declare dso_local i32 @kfree(%struct.esschan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
