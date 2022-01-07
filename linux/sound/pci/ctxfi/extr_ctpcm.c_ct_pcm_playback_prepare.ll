; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_runtime = type { %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32 }
%struct.ct_atc = type { i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEC958 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Preparing pcm playback failed!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %14, align 8
  store %struct.ct_atc_pcm* %15, %struct.ct_atc_pcm** %7, align 8
  %16 = load i64, i64* @IEC958, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %25 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %24, i32 0, i32 0
  %26 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %25, align 8
  %27 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %28 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %29 = call i32 %26(%struct.ct_atc* %27, %struct.ct_atc_pcm* %28)
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %32 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %31, i32 0, i32 1
  %33 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %32, align 8
  %34 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %35 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %36 = call i32 %33(%struct.ct_atc* %34, %struct.ct_atc_pcm* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %42 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
