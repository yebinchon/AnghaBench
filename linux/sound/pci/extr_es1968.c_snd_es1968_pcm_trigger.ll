; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.esschan* }
%struct.esschan = type { i32, i32, i32, i32 }
%struct.es1968 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_es1968_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.es1968*, align 8
  %6 = alloca %struct.esschan*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.es1968* %8, %struct.es1968** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.esschan*, %struct.esschan** %12, align 8
  store %struct.esschan* %13, %struct.esschan** %6, align 8
  %14 = load %struct.es1968*, %struct.es1968** %5, align 8
  %15 = getelementptr inbounds %struct.es1968, %struct.es1968* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %53 [
    i32 130, label %18
    i32 131, label %18
    i32 129, label %39
    i32 128, label %39
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.esschan*, %struct.esschan** %6, align 8
  %20 = getelementptr inbounds %struct.esschan, %struct.esschan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.es1968*, %struct.es1968** %5, align 8
  %26 = load %struct.esschan*, %struct.esschan** %6, align 8
  %27 = getelementptr inbounds %struct.esschan, %struct.esschan* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_es1968_bob_inc(%struct.es1968* %25, i32 %28)
  %30 = load %struct.esschan*, %struct.esschan** %6, align 8
  %31 = getelementptr inbounds %struct.esschan, %struct.esschan* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.esschan*, %struct.esschan** %6, align 8
  %33 = getelementptr inbounds %struct.esschan, %struct.esschan* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.es1968*, %struct.es1968** %5, align 8
  %35 = load %struct.esschan*, %struct.esschan** %6, align 8
  %36 = call i32 @snd_es1968_pcm_start(%struct.es1968* %34, %struct.esschan* %35)
  %37 = load %struct.esschan*, %struct.esschan** %6, align 8
  %38 = getelementptr inbounds %struct.esschan, %struct.esschan* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %53

39:                                               ; preds = %2, %2
  %40 = load %struct.esschan*, %struct.esschan** %6, align 8
  %41 = getelementptr inbounds %struct.esschan, %struct.esschan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.es1968*, %struct.es1968** %5, align 8
  %47 = load %struct.esschan*, %struct.esschan** %6, align 8
  %48 = call i32 @snd_es1968_pcm_stop(%struct.es1968* %46, %struct.esschan* %47)
  %49 = load %struct.esschan*, %struct.esschan** %6, align 8
  %50 = getelementptr inbounds %struct.esschan, %struct.esschan* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.es1968*, %struct.es1968** %5, align 8
  %52 = call i32 @snd_es1968_bob_dec(%struct.es1968* %51)
  br label %53

53:                                               ; preds = %2, %45, %44, %24, %23
  %54 = load %struct.es1968*, %struct.es1968** %5, align 8
  %55 = getelementptr inbounds %struct.es1968, %struct.es1968* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  ret i32 0
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_es1968_bob_inc(%struct.es1968*, i32) #1

declare dso_local i32 @snd_es1968_pcm_start(%struct.es1968*, %struct.esschan*) #1

declare dso_local i32 @snd_es1968_pcm_stop(%struct.es1968*, %struct.esschan*) #1

declare dso_local i32 @snd_es1968_bob_dec(%struct.es1968*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
