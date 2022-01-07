; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_new_pcm_instance.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_new_pcm_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_card_info = type { %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.xen_front_cfg_pcm_instance = type { i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.xen_snd_front_pcm_instance_info = type { i32, i32, %struct.snd_pcm*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32, %struct.xen_snd_front_card_info* }
%struct.snd_pcm = type { i32, i32, i64, %struct.xen_snd_front_pcm_instance_info* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"New PCM device \22%s\22 with id %d playback %d capture %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Virtual card PCM\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_drv_alsa_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_drv_alsa_capture_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_snd_front_card_info*, %struct.xen_front_cfg_pcm_instance*, %struct.xen_snd_front_pcm_instance_info*)* @new_pcm_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_pcm_instance(%struct.xen_snd_front_card_info* %0, %struct.xen_front_cfg_pcm_instance* %1, %struct.xen_snd_front_pcm_instance_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_snd_front_card_info*, align 8
  %6 = alloca %struct.xen_front_cfg_pcm_instance*, align 8
  %7 = alloca %struct.xen_snd_front_pcm_instance_info*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xen_snd_front_card_info* %0, %struct.xen_snd_front_card_info** %5, align 8
  store %struct.xen_front_cfg_pcm_instance* %1, %struct.xen_front_cfg_pcm_instance** %6, align 8
  store %struct.xen_snd_front_pcm_instance_info* %2, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %11 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %5, align 8
  %12 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %18 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %21 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %24 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %27 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %5, align 8
  %31 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %32 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %31, i32 0, i32 6
  store %struct.xen_snd_front_card_info* %30, %struct.xen_snd_front_card_info** %32, align 8
  %33 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %34 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %37 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %39 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %3
  %43 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %5, align 8
  %44 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %48 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kcalloc(i32* %46, i32 %49, i32 4, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_10__*
  %53 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %54 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %53, i32 0, i32 4
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %56 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %55, i32 0, i32 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %235

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %65 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %5, align 8
  %70 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %74 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @devm_kcalloc(i32* %72, i32 %75, i32 4, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_12__*
  %79 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %80 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %79, i32 0, i32 3
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %82 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %81, i32 0, i32 3
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = icmp ne %struct.TYPE_12__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %68
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %235

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %91 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %94 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %96 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %99 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %137, %89
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %103 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %100
  %107 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %108 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %107, i32 0, i32 5
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %116 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %115, i32 0, i32 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  %122 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %123 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %122, i32 0, i32 5
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %131 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %130, i32 0, i32 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %106
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %100

140:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %178, %140
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %144 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %141
  %148 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %149 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %148, i32 0, i32 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %157 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %156, i32 0, i32 3
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  store i32 %155, i32* %162, align 4
  %163 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %164 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %163, i32 0, i32 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %172 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %171, i32 0, i32 3
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i32 %170, i32* %177, align 4
  br label %178

178:                                              ; preds = %147
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %141

181:                                              ; preds = %141
  %182 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %5, align 8
  %183 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %186 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %189 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %192 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %195 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @snd_pcm_new(%struct.TYPE_14__* %184, i32 %187, i32 %190, i32 %193, i32 %196, %struct.snd_pcm** %8)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %181
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %4, align 4
  br label %235

202:                                              ; preds = %181
  %203 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %204 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %205 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %204, i32 0, i32 3
  store %struct.xen_snd_front_pcm_instance_info* %203, %struct.xen_snd_front_pcm_instance_info** %205, align 8
  %206 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %207 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  %208 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %209 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %211 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @strncpy(i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %214 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %215 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %202
  %219 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %220 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %221 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %219, i32 %220, i32* @snd_drv_alsa_playback_ops)
  br label %222

222:                                              ; preds = %218, %202
  %223 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %6, align 8
  %224 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %229 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %230 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %228, i32 %229, i32* @snd_drv_alsa_capture_ops)
  br label %231

231:                                              ; preds = %227, %222
  %232 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %233 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %7, align 8
  %234 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %233, i32 0, i32 2
  store %struct.snd_pcm* %232, %struct.snd_pcm** %234, align 8
  store i32 0, i32* %4, align 4
  br label %235

235:                                              ; preds = %231, %200, %85, %59
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
