; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i64, i64, %struct.snd_pcm*, %struct.snd_card* }
%struct.snd_pcm = type { i32, %struct.snd_sb*, i32 }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"SB16 DSP\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DSP v%i.%i\00", align 1
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_sb16_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_sb16_capture_ops = common dso_local global i32 0, align 4
@snd_sb16_dma_control = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb16dsp_pcm(%struct.snd_sb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 4
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %6, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_pcm_new(%struct.snd_card* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1, i32 1, %struct.snd_pcm** %7)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 8
  %26 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 255
  %30 = call i32 @sprintf(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 1
  store %struct.snd_sb* %34, %struct.snd_sb** %36, align 8
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %38 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 3
  store %struct.snd_pcm* %37, %struct.snd_pcm** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %41 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %42 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %40, i32 %41, i32* @snd_sb16_playback_ops)
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %44 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %45 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %43, i32 %44, i32* @snd_sb16_capture_ops)
  %46 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %47 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %18
  %51 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %52 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %55 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %60 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %61 = call i32 @snd_ctl_new1(i32* @snd_sb16_dma_control, %struct.snd_sb* %60)
  %62 = call i32 @snd_ctl_add(%struct.snd_card* %59, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %50, %18
  %69 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %70 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %74 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %75 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %76 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %73, i32 %74, i32 %77, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %65, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_sb*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
