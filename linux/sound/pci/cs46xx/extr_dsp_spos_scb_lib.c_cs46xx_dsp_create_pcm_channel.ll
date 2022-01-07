; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_pcm_channel_descriptor = type { i32, i32, i32, i32, i32, %struct.dsp_scb_descriptor*, i8*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }
%struct.dsp_scb_descriptor = type { i64, i32 }
%struct.snd_cs46xx = type { i32, %struct.TYPE_2__*, %struct.dsp_spos_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_spos_instance = type { i32, i32*, i64, %struct.dsp_pcm_channel_descriptor*, i32, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor* }

@DSP_MAX_SCB_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IEC958 pass through\0A\00", align 1
@DSP_MAX_PCM_CHANNELS = common dso_local global i32 0, align 4
@CS46XX_DSP_CAPTURE_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dsp_spos: no free PCM channel\0A\00", align 1
@DSP_MAX_SRC_NR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"dsp_spos: to many SRC instances\0A!\00", align 1
@SCB_ON_PARENT_SUBLIST_SCB = common dso_local global i32 0, align 4
@SCB_ON_PARENT_NEXT_SCB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SrcTask_SCB%d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"dsp_spos: creating SRC \22%s\22\0A\00", align 1
@src_output_buffer_addr = common dso_local global i32* null, align 8
@src_delay_buffer_addr = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"dsp_spos: failed to create SRCtaskSCB\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PCMReader_SCB%d\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"dsp_spos: creating PCM \22%s\22 (%d)\0A\00", align 1
@pcm_reader_buffer_addr = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"dsp_spos: failed to create PCMreaderSCB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_pcm_channel_descriptor* @cs46xx_dsp_create_pcm_channel(%struct.snd_cs46xx* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dsp_pcm_channel_descriptor*, align 8
  %7 = alloca %struct.snd_cs46xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsp_spos_instance*, align 8
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca %struct.dsp_scb_descriptor*, align 8
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca %struct.dsp_scb_descriptor*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %27 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %26, i32 0, i32 2
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %27, align 8
  store %struct.dsp_spos_instance* %28, %struct.dsp_spos_instance** %12, align 8
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %13, align 8
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %15, align 8
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %16, align 8
  %29 = load i32, i32* @DSP_MAX_SCB_NAME, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %72 [
    i32 130, label %34
    i32 129, label %38
    i32 131, label %42
    i32 128, label %46
    i32 132, label %48
  ]

34:                                               ; preds = %5
  %35 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %36 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %35, i32 0, i32 8
  %37 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %36, align 8
  store %struct.dsp_scb_descriptor* %37, %struct.dsp_scb_descriptor** %15, align 8
  br label %74

38:                                               ; preds = %5
  %39 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %40 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %39, i32 0, i32 7
  %41 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %40, align 8
  store %struct.dsp_scb_descriptor* %41, %struct.dsp_scb_descriptor** %15, align 8
  br label %74

42:                                               ; preds = %5
  %43 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %44 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %43, i32 0, i32 6
  %45 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %44, align 8
  store %struct.dsp_scb_descriptor* %45, %struct.dsp_scb_descriptor** %15, align 8
  br label %74

46:                                               ; preds = %5
  %47 = call i32 (...) @snd_BUG()
  br label %74

48:                                               ; preds = %5
  %49 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %50 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %49, i32 0, i32 5
  %51 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %50, align 8
  %52 = icmp ne %struct.dsp_scb_descriptor* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @snd_BUG_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

58:                                               ; preds = %48
  %59 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %60 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %59, i32 0, i32 5
  %61 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %60, align 8
  store %struct.dsp_scb_descriptor* %61, %struct.dsp_scb_descriptor** %15, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 48000
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %66 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %71

71:                                               ; preds = %64, %58
  br label %74

72:                                               ; preds = %5
  %73 = call i32 (...) @snd_BUG()
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

74:                                               ; preds = %71, %46, %42, %38, %34
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 44100, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %74
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %169, %78
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* @DSP_MAX_PCM_CHANNELS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %20, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %88 = icmp eq %struct.dsp_scb_descriptor* %87, null
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ true, %83 ], [ %88, %86 ]
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi i1 [ false, %79 ], [ %90, %89 ]
  br i1 %92, label %93, label %172

93:                                               ; preds = %91
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @CS46XX_DSP_CAPTURE_CHANNEL, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %169

98:                                               ; preds = %93
  %99 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %100 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %99, i32 0, i32 3
  %101 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %101, i64 %103
  %105 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %162

108:                                              ; preds = %98
  %109 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %110 = icmp ne %struct.dsp_scb_descriptor* %109, null
  br i1 %110, label %161, label %111

111:                                              ; preds = %108
  %112 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %113 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %112, i32 0, i32 3
  %114 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %114, i64 %116
  %118 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %111
  %123 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %124 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %123, i32 0, i32 3
  %125 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %125, i64 %127
  %129 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %128, i32 0, i32 5
  %130 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %129, align 8
  %131 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  %132 = icmp eq %struct.dsp_scb_descriptor* %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %122
  %134 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %135 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %134, i32 0, i32 3
  %136 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %136, i64 %138
  %140 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %139, i32 0, i32 7
  %141 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %140, align 8
  store %struct.dsp_scb_descriptor* %141, %struct.dsp_scb_descriptor** %13, align 8
  %142 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %143 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %142, i32 0, i32 3
  %144 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %144, i64 %146
  %148 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %147, i32 0, i32 7
  %149 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %148, align 8
  %150 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %154 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %153, i32 0, i32 3
  %155 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %154, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %155, i64 %157
  %159 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %22, align 4
  br label %161

161:                                              ; preds = %133, %122, %111, %108
  br label %168

162:                                              ; preds = %98
  %163 = load i32, i32* %20, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* %19, align 4
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167, %161
  br label %169

169:                                              ; preds = %168, %97
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %79

172:                                              ; preds = %91
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %177 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dev_err(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

182:                                              ; preds = %172
  %183 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %184 = icmp eq %struct.dsp_scb_descriptor* %183, null
  br i1 %184, label %185, label %292

185:                                              ; preds = %182
  %186 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %187 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @DSP_MAX_SRC_NR, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %193 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dev_err(i32 %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

198:                                              ; preds = %185
  store i32 0, i32* %19, align 4
  br label %199

199:                                              ; preds = %221, %198
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* @DSP_MAX_SRC_NR, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %205 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %203
  %213 = load i32, i32* %19, align 4
  store i32 %213, i32* %22, align 4
  %214 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %215 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 1, i32* %219, align 4
  br label %224

220:                                              ; preds = %203
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %199

224:                                              ; preds = %212, %199
  %225 = load i32, i32* %22, align 4
  %226 = icmp eq i32 %225, -1
  %227 = zext i1 %226 to i32
  %228 = call i64 @snd_BUG_ON(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

231:                                              ; preds = %224
  %232 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  %233 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %236 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %234, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  store %struct.dsp_scb_descriptor* %240, %struct.dsp_scb_descriptor** %16, align 8
  %241 = load i32, i32* @SCB_ON_PARENT_SUBLIST_SCB, align 4
  store i32 %241, i32* %21, align 4
  br label %249

242:                                              ; preds = %231
  %243 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %244 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  %245 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call %struct.dsp_scb_descriptor* @find_next_free_scb(%struct.snd_cs46xx* %243, i64 %246)
  store %struct.dsp_scb_descriptor* %247, %struct.dsp_scb_descriptor** %16, align 8
  %248 = load i32, i32* @SCB_ON_PARENT_NEXT_SCB, align 4
  store i32 %248, i32* %21, align 4
  br label %249

249:                                              ; preds = %242, %239
  %250 = load i32, i32* @DSP_MAX_SCB_NAME, align 4
  %251 = load i32, i32* %22, align 4
  %252 = call i32 @snprintf(i8* %32, i32 %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %251)
  %253 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %254 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %253, i32 0, i32 1
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, ...) @dev_dbg(i32 %257, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %259 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load i32*, i32** @src_output_buffer_addr, align 8
  %262 = load i32, i32* %22, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** @src_delay_buffer_addr, align 8
  %267 = load i32, i32* %22, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %22, align 4
  %272 = mul nsw i32 %271, 16
  %273 = add nsw i32 1024, %272
  %274 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %16, align 8
  %275 = load i32, i32* %21, align 4
  %276 = load i32, i32* %23, align 4
  %277 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_src_task_scb(%struct.snd_cs46xx* %259, i8* %32, i32 %260, i32 %265, i32 %270, i32 %273, %struct.dsp_scb_descriptor* %274, i32 %275, i32 %276)
  store %struct.dsp_scb_descriptor* %277, %struct.dsp_scb_descriptor** %13, align 8
  %278 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %279 = icmp ne %struct.dsp_scb_descriptor* %278, null
  br i1 %279, label %287, label %280

280:                                              ; preds = %249
  %281 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %282 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %281, i32 0, i32 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @dev_err(i32 %285, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

287:                                              ; preds = %249
  %288 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %289 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %287, %182
  %293 = load i32, i32* @DSP_MAX_SCB_NAME, align 4
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @snprintf(i8* %32, i32 %293, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %294)
  %296 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %297 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %296, i32 0, i32 1
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %11, align 4
  %302 = call i32 (i32, i8*, ...) @dev_dbg(i32 %300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %32, i32 %301)
  %303 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %304 = load i32*, i32** @pcm_reader_buffer_addr, align 8
  %305 = load i32, i32* %20, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %20, align 4
  %310 = mul nsw i32 %309, 16
  %311 = add nsw i32 %310, 512
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* %10, align 4
  %314 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_pcm_reader_scb(%struct.snd_cs46xx* %303, i8* %32, i32 %308, i32 %311, i32 %312, i32 %313, i32* null, i32 0)
  store %struct.dsp_scb_descriptor* %314, %struct.dsp_scb_descriptor** %14, align 8
  %315 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %316 = icmp ne %struct.dsp_scb_descriptor* %315, null
  br i1 %316, label %324, label %317

317:                                              ; preds = %292
  %318 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %319 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %318, i32 0, i32 1
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @dev_err(i32 %322, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store %struct.dsp_pcm_channel_descriptor* null, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

324:                                              ; preds = %292
  %325 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %326 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %325, i32 0, i32 0
  %327 = load i64, i64* %24, align 8
  %328 = call i32 @spin_lock_irqsave(i32* %326, i64 %327)
  %329 = load i32, i32* %8, align 4
  %330 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %331 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %330, i32 0, i32 3
  %332 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %331, align 8
  %333 = load i32, i32* %20, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %332, i64 %334
  %336 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %335, i32 0, i32 1
  store i32 %329, i32* %336, align 4
  %337 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %338 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %339 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %338, i32 0, i32 3
  %340 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %339, align 8
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %340, i64 %342
  %344 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %343, i32 0, i32 8
  store %struct.dsp_scb_descriptor* %337, %struct.dsp_scb_descriptor** %344, align 8
  %345 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %346 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %347 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %346, i32 0, i32 3
  %348 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %347, align 8
  %349 = load i32, i32* %20, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %348, i64 %350
  %352 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %351, i32 0, i32 7
  store %struct.dsp_scb_descriptor* %345, %struct.dsp_scb_descriptor** %352, align 8
  %353 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %354 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %353, i32 0, i32 3
  %355 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %354, align 8
  %356 = load i32, i32* %20, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %355, i64 %357
  %359 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %358, i32 0, i32 3
  store i32 1, i32* %359, align 4
  %360 = load i8*, i8** %9, align 8
  %361 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %362 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %361, i32 0, i32 3
  %363 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %362, align 8
  %364 = load i32, i32* %20, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %363, i64 %365
  %367 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %366, i32 0, i32 6
  store i8* %360, i8** %367, align 8
  %368 = load i32, i32* %22, align 4
  %369 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %370 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %369, i32 0, i32 3
  %371 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %370, align 8
  %372 = load i32, i32* %20, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %371, i64 %373
  %375 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %374, i32 0, i32 2
  store i32 %368, i32* %375, align 8
  %376 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %377 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %376, i32 0, i32 3
  %378 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %377, align 8
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %378, i64 %380
  %382 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %381, i32 0, i32 0
  store i32 1, i32* %382, align 8
  %383 = load i32, i32* %20, align 4
  %384 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %385 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %384, i32 0, i32 3
  %386 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %385, align 8
  %387 = load i32, i32* %20, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %386, i64 %388
  %390 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %389, i32 0, i32 4
  store i32 %383, i32* %390, align 8
  %391 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  %392 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %393 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %392, i32 0, i32 3
  %394 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %393, align 8
  %395 = load i32, i32* %20, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %394, i64 %396
  %398 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %397, i32 0, i32 5
  store %struct.dsp_scb_descriptor* %391, %struct.dsp_scb_descriptor** %398, align 8
  %399 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %400 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 8
  %403 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %404 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %403, i32 0, i32 0
  %405 = load i64, i64* %24, align 8
  %406 = call i32 @spin_unlock_irqrestore(i32* %404, i64 %405)
  %407 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  %408 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %407, i32 0, i32 3
  %409 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %408, align 8
  %410 = load i32, i32* %20, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, %struct.dsp_pcm_channel_descriptor* %409, i64 %411
  store %struct.dsp_pcm_channel_descriptor* %412, %struct.dsp_pcm_channel_descriptor** %6, align 8
  store i32 1, i32* %25, align 4
  br label %413

413:                                              ; preds = %324, %317, %280, %230, %191, %175, %72, %57
  %414 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %414)
  %415 = load %struct.dsp_pcm_channel_descriptor*, %struct.dsp_pcm_channel_descriptor** %6, align 8
  ret %struct.dsp_pcm_channel_descriptor* %415
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_BUG(...) #2

declare dso_local i64 @snd_BUG_ON(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local %struct.dsp_scb_descriptor* @find_next_free_scb(%struct.snd_cs46xx*, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_src_task_scb(%struct.snd_cs46xx*, i8*, i32, i32, i32, i32, %struct.dsp_scb_descriptor*, i32, i32) #2

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_pcm_reader_scb(%struct.snd_cs46xx*, i8*, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
