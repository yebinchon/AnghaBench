; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_cmi8330.c_snd_cmi8330_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_cmi8330.c_snd_cmi8330_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_cmi8330 = type { i64, %struct.snd_pcm*, %struct.TYPE_2__*, i32, i32 }
%struct.snd_pcm = type { %struct.snd_cmi8330*, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_ops, i32, i8* }
%struct.snd_pcm_ops = type { i8* }

@snd_cmi8330_pcm.cmi_open_callbacks = internal global [2 x i8*] [i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 129 to i8*)], align 16
@CMI8329 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"CMI8329\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CMI8330\00", align 1
@CMI_SB_STREAM = common dso_local global i64 0, align 8
@CMI_AD_STREAM = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_cmi8330*)* @snd_cmi8330_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmi8330_pcm(%struct.snd_card* %0, %struct.snd_cmi8330* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_cmi8330*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_cmi8330* %1, %struct.snd_cmi8330** %5, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %10 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %11 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CMI8329, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %17 = call i32 @snd_pcm_new(%struct.snd_card* %9, i8* %16, i32 0, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %141

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %26 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CMI8329, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %32 = call i32 @strcpy(i32 %24, i8* %31)
  %33 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  store %struct.snd_cmi8330* %33, %struct.snd_cmi8330** %35, align 8
  %36 = load i64, i64* @CMI_SB_STREAM, align 8
  %37 = call %struct.snd_pcm_ops* @snd_sb16dsp_get_pcm_ops(i64 %36)
  store %struct.snd_pcm_ops* %37, %struct.snd_pcm_ops** %7, align 8
  %38 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %39 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @CMI_SB_STREAM, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %7, align 8
  %45 = bitcast %struct.snd_pcm_ops* %43 to i8*
  %46 = bitcast %struct.snd_pcm_ops* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_ops, %struct.snd_pcm_ops* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %51 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* @CMI_SB_STREAM, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %49, i8** %55, align 8
  %56 = load i64, i64* @CMI_SB_STREAM, align 8
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* @snd_cmi8330_pcm.cmi_open_callbacks, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %60 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @CMI_SB_STREAM, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.snd_pcm_ops, %struct.snd_pcm_ops* %64, i32 0, i32 0
  store i8* %58, i8** %65, align 8
  %66 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %67 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %70 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* @CMI_SB_STREAM, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 8
  %75 = load i64, i64* @CMI_AD_STREAM, align 8
  %76 = call %struct.snd_pcm_ops* @snd_wss_get_pcm_ops(i64 %75)
  store %struct.snd_pcm_ops* %76, %struct.snd_pcm_ops** %7, align 8
  %77 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %78 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @CMI_AD_STREAM, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %7, align 8
  %84 = bitcast %struct.snd_pcm_ops* %82 to i8*
  %85 = bitcast %struct.snd_pcm_ops* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = load %struct.snd_pcm_ops*, %struct.snd_pcm_ops** %7, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_ops, %struct.snd_pcm_ops* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %90 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* @CMI_AD_STREAM, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i8* %88, i8** %94, align 8
  %95 = load i64, i64* @CMI_AD_STREAM, align 8
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* @snd_cmi8330_pcm.cmi_open_callbacks, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %99 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* @CMI_AD_STREAM, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.snd_pcm_ops, %struct.snd_pcm_ops* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  %105 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %106 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %109 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @CMI_AD_STREAM, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %107, i32* %113, align 8
  %114 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %115 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %116 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %117 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %114, i64 %115, %struct.snd_pcm_ops* %121)
  %123 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %124 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %125 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %126 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %123, i64 %124, %struct.snd_pcm_ops* %130)
  %132 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %133 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %134 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %135 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %132, i32 %133, i32 %136, i32 65536, i32 131072)
  %138 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %139 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %140 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %139, i32 0, i32 1
  store %struct.snd_pcm* %138, %struct.snd_pcm** %140, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %21, %19
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.snd_pcm_ops* @snd_sb16dsp_get_pcm_ops(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_pcm_ops* @snd_wss_get_pcm_ops(i64) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, %struct.snd_pcm_ops*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
