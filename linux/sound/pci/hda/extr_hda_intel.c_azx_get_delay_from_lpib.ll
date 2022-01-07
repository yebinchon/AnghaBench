; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_delay_from_lpib.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_delay_from_lpib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32**, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.azx_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unstable LPIB (%d >= %d); disabling LPIB delay counting\0A\00", align 1
@AZX_DCAPS_COUNT_LPIB_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*, i32)* @azx_get_delay_from_lpib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_delay_from_lpib(%struct.azx* %0, %struct.azx_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %12 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.azx*, %struct.azx** %4, align 8
  %19 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %20 = call i32 @azx_get_pos_lpib(%struct.azx* %18, %struct.azx_dev* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %38 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %45 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %43, %42
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %56 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %53
  %61 = load %struct.azx*, %struct.azx** %4, align 8
  %62 = getelementptr inbounds %struct.azx, %struct.azx* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %68 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_info(i32 %65, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  store i32 0, i32* %10, align 4
  %72 = load i32, i32* @AZX_DCAPS_COUNT_LPIB_DELAY, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.azx*, %struct.azx** %4, align 8
  %75 = getelementptr inbounds %struct.azx, %struct.azx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.azx*, %struct.azx** %4, align 8
  %79 = getelementptr inbounds %struct.azx, %struct.azx* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %60, %53
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @bytes_to_frames(i32 %87, i32 %88)
  ret i32 %89
}

declare dso_local i32 @azx_get_pos_lpib(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @bytes_to_frames(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
