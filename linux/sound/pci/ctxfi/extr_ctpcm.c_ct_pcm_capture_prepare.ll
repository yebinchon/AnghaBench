; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32 }
%struct.ct_atc = type { i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Preparing pcm capture failed!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.ct_atc_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
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
  %16 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %17 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %16, i32 0, i32 0
  %18 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %17, align 8
  %19 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %20 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %21 = call i32 %18(%struct.ct_atc* %19, %struct.ct_atc_pcm* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
