; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32 }
%struct.ct_atc = type { i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @ct_pcm_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.ct_atc_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.ct_atc* %9, %struct.ct_atc** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %14, align 8
  store %struct.ct_atc_pcm* %15, %struct.ct_atc_pcm** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %31 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %2
  %18 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %19 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %18, i32 0, i32 1
  %20 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %19, align 8
  %21 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %23 = call i32 %20(%struct.ct_atc* %21, %struct.ct_atc_pcm* %22)
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 0
  %27 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %26, align 8
  %28 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %29 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %30 = call i32 %27(%struct.ct_atc* %28, %struct.ct_atc_pcm* %29)
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %33 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %32, i32 0, i32 0
  %34 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %33, align 8
  %35 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %36 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %37 = call i32 %34(%struct.ct_atc* %35, %struct.ct_atc_pcm* %36)
  br label %38

38:                                               ; preds = %31, %24, %17
  ret i32 0
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
