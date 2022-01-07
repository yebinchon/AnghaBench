; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, i64, %struct.snd_pcm*, i64, %struct.TYPE_5__, i32, i32, %struct.snd_card* }
%struct.snd_pcm = type { i64, i32, %struct.TYPE_4__*, i32, i32, %struct.snd_gus_card* }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GF1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_gf1_pcm_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_gf1_pcm_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" rev %c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (synth)\00", align 1
@snd_gf1_pcm_volume_control1 = common dso_local global i32 0, align 4
@snd_gf1_pcm_volume_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_pcm_new(%struct.snd_gus_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca %struct.snd_pcm*, align 8
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 7
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %8, align 8
  %17 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %18 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %21, %3
  %33 = phi i1 [ false, %21 ], [ false, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %12, align 4
  %36 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %45 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 2
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @snd_pcm_new(%struct.snd_card* %36, i8* %42, i32 %43, i32 %48, i32 %49, %struct.snd_pcm** %10)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %193

55:                                               ; preds = %32
  %56 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 5
  store %struct.snd_gus_card* %56, %struct.snd_gus_card** %58, align 8
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %60 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %61 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %59, i64 %60, i32* @snd_gf1_pcm_playback_ops)
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %63 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %67, align 8
  store %struct.snd_pcm_substream* %68, %struct.snd_pcm_substream** %11, align 8
  br label %69

69:                                               ; preds = %86, %55
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %71 = icmp ne %struct.snd_pcm_substream* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %74 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %75 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %76 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %79 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 131072, i32 65536
  %85 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %73, i32 %74, i32 %77, i32 65536, i32 %84)
  br label %86

86:                                               ; preds = %72
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %87, i32 0, i32 0
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %88, align 8
  store %struct.snd_pcm_substream* %89, %struct.snd_pcm_substream** %11, align 8
  br label %69

90:                                               ; preds = %69
  %91 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %92 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %91, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %94 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %95 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %90
  %99 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %100 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %101 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %99, i64 %100, i32* @snd_gf1_pcm_capture_ops)
  %102 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %103 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %107 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %98
  %112 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %113 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %114 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %98
  %118 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %119 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %123, align 8
  %125 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %126 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %127 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %130 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 3
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 131072, i32 65536
  %136 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %124, i32 %125, i32 %128, i32 65536, i32 %135)
  br label %137

137:                                              ; preds = %117, %90
  %138 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %139 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %142 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @strcpy(i64 %140, i32 %143)
  %145 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %146 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %137
  %150 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %151 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %154 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @strlen(i64 %155)
  %157 = add nsw i64 %152, %156
  %158 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %159 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 65
  %162 = call i32 @sprintf(i64 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %149, %137
  %164 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %165 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @strcat(i64 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %168 = load %struct.snd_pcm*, %struct.snd_pcm** %10, align 8
  %169 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %170 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %169, i32 0, i32 2
  store %struct.snd_pcm* %168, %struct.snd_pcm** %170, align 8
  %171 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %172 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %177 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_gf1_pcm_volume_control1, %struct.snd_gus_card* %176)
  store %struct.snd_kcontrol* %177, %struct.snd_kcontrol** %9, align 8
  br label %181

178:                                              ; preds = %163
  %179 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %180 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_gf1_pcm_volume_control, %struct.snd_gus_card* %179)
  store %struct.snd_kcontrol* %180, %struct.snd_kcontrol** %9, align 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %183 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %184 = call i32 @snd_ctl_add(%struct.snd_card* %182, %struct.snd_kcontrol* %183)
  store i32 %184, i32* %13, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %4, align 4
  br label %193

188:                                              ; preds = %181
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %191 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %188, %186, %53
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i32, i32) #1

declare dso_local i32 @strcpy(i64, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @strcat(i64, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_gus_card*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
