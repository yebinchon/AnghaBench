; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw2 = type { %struct.TYPE_3__*, i32, %struct.aw2_pcm_device*, %struct.aw2_pcm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.aw2_pcm_device = type { i64, %struct.aw2*, %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.aw2_pcm_device*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Audiowerk2 analog playback\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"snd_pcm_new error (0x%X)\0A\00", align 1
@NUM_STREAM_PLAYBACK_ANA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Analog playback\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_aw2_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Audiowerk2 digital playback\00", align 1
@NUM_STREAM_PLAYBACK_DIG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Digital playback\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Audiowerk2 capture\00", align 1
@NUM_STREAM_CAPTURE_ANA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_aw2_capture_ops = common dso_local global i32 0, align 4
@aw2_control = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"snd_ctl_add error (0x%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw2*)* @snd_aw2_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aw2_new_pcm(%struct.aw2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw2*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.aw2_pcm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.aw2* %0, %struct.aw2** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.aw2*, %struct.aw2** %3, align 8
  %10 = getelementptr inbounds %struct.aw2, %struct.aw2* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @snd_pcm_new(%struct.TYPE_3__* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.aw2*, %struct.aw2** %3, align 8
  %17 = getelementptr inbounds %struct.aw2, %struct.aw2* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %168

24:                                               ; preds = %1
  %25 = load %struct.aw2*, %struct.aw2** %3, align 8
  %26 = getelementptr inbounds %struct.aw2, %struct.aw2* %25, i32 0, i32 3
  %27 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %26, align 8
  %28 = load i64, i64* @NUM_STREAM_PLAYBACK_ANA, align 8
  %29 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %27, i64 %28
  store %struct.aw2_pcm_device* %29, %struct.aw2_pcm_device** %7, align 8
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 0
  store %struct.aw2_pcm_device* %34, %struct.aw2_pcm_device** %36, align 8
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %38 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %39 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %37, i32 %38, i32* @snd_aw2_playback_ops)
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %42 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %41, i32 0, i32 2
  store %struct.snd_pcm* %40, %struct.snd_pcm** %42, align 8
  %43 = load %struct.aw2*, %struct.aw2** %3, align 8
  %44 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %45 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %44, i32 0, i32 1
  store %struct.aw2* %43, %struct.aw2** %45, align 8
  %46 = load i64, i64* @NUM_STREAM_PLAYBACK_ANA, align 8
  %47 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %48 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %50 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %51 = load %struct.aw2*, %struct.aw2** %3, align 8
  %52 = getelementptr inbounds %struct.aw2, %struct.aw2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_dma_pci_data(i32 %53)
  %55 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %49, i32 %50, i32 %54, i32 65536, i32 65536)
  %56 = load %struct.aw2*, %struct.aw2** %3, align 8
  %57 = getelementptr inbounds %struct.aw2, %struct.aw2* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @snd_pcm_new(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 0, %struct.snd_pcm** %5)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %24
  %63 = load %struct.aw2*, %struct.aw2** %3, align 8
  %64 = getelementptr inbounds %struct.aw2, %struct.aw2* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %168

71:                                               ; preds = %24
  %72 = load %struct.aw2*, %struct.aw2** %3, align 8
  %73 = getelementptr inbounds %struct.aw2, %struct.aw2* %72, i32 0, i32 3
  %74 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %73, align 8
  %75 = load i64, i64* @NUM_STREAM_PLAYBACK_DIG, align 8
  %76 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %74, i64 %75
  store %struct.aw2_pcm_device* %76, %struct.aw2_pcm_device** %7, align 8
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strcpy(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %83 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %82, i32 0, i32 0
  store %struct.aw2_pcm_device* %81, %struct.aw2_pcm_device** %83, align 8
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %85 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %86 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %84, i32 %85, i32* @snd_aw2_playback_ops)
  %87 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %88 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %89 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %88, i32 0, i32 2
  store %struct.snd_pcm* %87, %struct.snd_pcm** %89, align 8
  %90 = load %struct.aw2*, %struct.aw2** %3, align 8
  %91 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %92 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %91, i32 0, i32 1
  store %struct.aw2* %90, %struct.aw2** %92, align 8
  %93 = load i64, i64* @NUM_STREAM_PLAYBACK_DIG, align 8
  %94 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %95 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %97 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %98 = load %struct.aw2*, %struct.aw2** %3, align 8
  %99 = getelementptr inbounds %struct.aw2, %struct.aw2* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @snd_dma_pci_data(i32 %100)
  %102 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %96, i32 %97, i32 %101, i32 65536, i32 65536)
  %103 = load %struct.aw2*, %struct.aw2** %3, align 8
  %104 = getelementptr inbounds %struct.aw2, %struct.aw2* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = call i32 @snd_pcm_new(%struct.TYPE_3__* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 2, i32 0, i32 1, %struct.snd_pcm** %6)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %71
  %110 = load %struct.aw2*, %struct.aw2** %3, align 8
  %111 = getelementptr inbounds %struct.aw2, %struct.aw2* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %168

118:                                              ; preds = %71
  %119 = load %struct.aw2*, %struct.aw2** %3, align 8
  %120 = getelementptr inbounds %struct.aw2, %struct.aw2* %119, i32 0, i32 2
  %121 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %120, align 8
  %122 = load i64, i64* @NUM_STREAM_CAPTURE_ANA, align 8
  %123 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %121, i64 %122
  store %struct.aw2_pcm_device* %123, %struct.aw2_pcm_device** %7, align 8
  %124 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %125 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @strcpy(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %129 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %130 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %129, i32 0, i32 0
  store %struct.aw2_pcm_device* %128, %struct.aw2_pcm_device** %130, align 8
  %131 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %132 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %133 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %131, i32 %132, i32* @snd_aw2_capture_ops)
  %134 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %135 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %136 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %135, i32 0, i32 2
  store %struct.snd_pcm* %134, %struct.snd_pcm** %136, align 8
  %137 = load %struct.aw2*, %struct.aw2** %3, align 8
  %138 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %139 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %138, i32 0, i32 1
  store %struct.aw2* %137, %struct.aw2** %139, align 8
  %140 = load i64, i64* @NUM_STREAM_CAPTURE_ANA, align 8
  %141 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %7, align 8
  %142 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %144 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %145 = load %struct.aw2*, %struct.aw2** %3, align 8
  %146 = getelementptr inbounds %struct.aw2, %struct.aw2* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @snd_dma_pci_data(i32 %147)
  %149 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %143, i32 %144, i32 %148, i32 65536, i32 65536)
  %150 = load %struct.aw2*, %struct.aw2** %3, align 8
  %151 = getelementptr inbounds %struct.aw2, %struct.aw2* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load %struct.aw2*, %struct.aw2** %3, align 8
  %154 = call i32 @snd_ctl_new1(i32* @aw2_control, %struct.aw2* %153)
  %155 = call i32 @snd_ctl_add(%struct.TYPE_3__* %152, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %118
  %159 = load %struct.aw2*, %struct.aw2** %3, align 8
  %160 = getelementptr inbounds %struct.aw2, %struct.aw2* %159, i32 0, i32 0
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @dev_err(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %168

167:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %158, %109, %62, %15
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_3__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_ctl_add(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.aw2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
