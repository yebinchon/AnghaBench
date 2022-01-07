; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.snd_es18xx* }
%struct.snd_es18xx = type { i32, i32, i32, i32, %struct.snd_pcm* }
%struct.snd_pcm = type { i8*, i32, %struct.snd_es18xx* }

@.str = private unnamed_addr constant [5 x i8] c"ES%x\00", align 1
@ES18XX_PCM2 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_es18xx_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_es18xx_capture_ops = common dso_local global i32 0, align 4
@ES18XX_DUPLEX_SAME = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ESS AudioDrive ES%x\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i32)* @snd_es18xx_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_pcm(%struct.snd_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_es18xx*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 1
  %12 = load %struct.snd_es18xx*, %struct.snd_es18xx** %11, align 8
  store %struct.snd_es18xx* %12, %struct.snd_es18xx** %6, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %14 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %15 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %19 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ES18XX_PCM2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snd_pcm_new(%struct.snd_card* %25, i8* %26, i32 %27, i32 2, i32 1, %struct.snd_pcm** %7)
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @snd_pcm_new(%struct.snd_card* %30, i8* %31, i32 %32, i32 1, i32 1, %struct.snd_pcm** %7)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %34
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %41 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %42 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %40, i32 %41, i32* @snd_es18xx_playback_ops)
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %44 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %45 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %43, i32 %44, i32* @snd_es18xx_capture_ops)
  %46 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 2
  store %struct.snd_es18xx* %46, %struct.snd_es18xx** %48, align 8
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %52 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ES18XX_DUPLEX_SAME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %39
  %58 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %39
  %64 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %65 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ES18XX_PCM2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %73 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %81 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %85 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %86 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %85, i32 0, i32 4
  store %struct.snd_pcm* %84, %struct.snd_pcm** %86, align 8
  %87 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %88 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %89 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %90 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %93 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %101, label %96

96:                                               ; preds = %76
  %97 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %98 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 3
  br label %101

101:                                              ; preds = %96, %76
  %102 = phi i1 [ true, %76 ], [ %100, %96 ]
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 131072, i32 65536
  %105 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %87, i32 %88, i32 %91, i32 65536, i32 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %37
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
