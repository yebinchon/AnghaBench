; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_setup_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_setup_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_pcm = type { i32, i32, i32, %struct.hdac_hdmi_cvt* }
%struct.hdac_hdmi_cvt = type { i32 }
%struct.hdac_hdmi_port = type { %struct.TYPE_7__, %struct.hdac_hdmi_pin* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hdac_hdmi_pin = type { i32 }
%struct.hdmi_audio_infoframe = type { i32, i32 }
%struct.dp_audio_infoframe = type { i32, i32, i32, i32, i32 }
%struct.hdac_hdmi_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.hdac_device.0*, i32, i32)* }
%struct.hdac_device.0 = type opaque

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid connection type: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AC_VERB_SET_HDMI_DIP_XMIT = common dso_local global i32 0, align 4
@AC_DIPXMIT_DISABLE = common dso_local global i32 0, align 4
@AC_VERB_SET_HDMI_DIP_DATA = common dso_local global i32 0, align 4
@AC_DIPXMIT_BEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_port*)* @hdac_hdmi_setup_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_setup_audio_infoframe(%struct.hdac_device* %0, %struct.hdac_hdmi_pcm* %1, %struct.hdac_hdmi_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca %struct.hdac_hdmi_pcm*, align 8
  %7 = alloca %struct.hdac_hdmi_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hdmi_audio_infoframe, align 4
  %11 = alloca %struct.hdac_hdmi_pin*, align 8
  %12 = alloca %struct.dp_audio_infoframe, align 4
  %13 = alloca %struct.hdac_hdmi_priv*, align 8
  %14 = alloca %struct.hdac_hdmi_cvt*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store %struct.hdac_hdmi_pcm* %1, %struct.hdac_hdmi_pcm** %6, align 8
  store %struct.hdac_hdmi_port* %2, %struct.hdac_hdmi_port** %7, align 8
  %23 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %24 = load i32, i32* @HDMI_AUDIO_INFOFRAME_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %30 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %29, i32 0, i32 1
  %31 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %30, align 8
  store %struct.hdac_hdmi_pin* %31, %struct.hdac_hdmi_pin** %11, align 8
  %32 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %33 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %32)
  store %struct.hdac_hdmi_priv* %33, %struct.hdac_hdmi_priv** %13, align 8
  %34 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %34, i32 0, i32 3
  %36 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %35, align 8
  store %struct.hdac_hdmi_cvt* %36, %struct.hdac_hdmi_cvt** %14, align 8
  %37 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %38 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %39 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %44 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %47 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_hdac_channel_allocation(%struct.hdac_device* %37, i32 %42, i32 %45, i32 %48, i32 1, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @snd_hdac_get_active_channels(i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %13, align 8
  %56 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.hdac_device.0*, i32, i32)*, i32 (%struct.hdac_device.0*, i32, i32)** %58, align 8
  %60 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %61 = bitcast %struct.hdac_device* %60 to %struct.hdac_device.0*
  %62 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %14, align 8
  %63 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 %59(%struct.hdac_device.0* %61, i32 %64, i32 %65)
  %67 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %13, align 8
  %68 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %67, i32 0, i32 0
  %69 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %70 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %74 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %77 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %6, align 8
  %80 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @snd_hdac_setup_channel_mapping(%struct.TYPE_8__* %68, i32 %71, i32 0, i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %84 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %18, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @drm_eld_get_conn_type(i32* %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  switch i32 %89, label %115 [
    i32 128, label %90
    i32 129, label %104
  ]

90:                                               ; preds = %3
  %91 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %10)
  %92 = load i32, i32* %20, align 4
  %93 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %21, align 4
  %95 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %10, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = mul nuw i64 4, %26
  %97 = trunc i64 %96 to i32
  %98 = call i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %10, i32* %28, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %197

103:                                              ; preds = %90
  br label %122

104:                                              ; preds = %3
  %105 = call i32 @memset(%struct.dp_audio_infoframe* %12, i32 0, i32 20)
  %106 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %12, i32 0, i32 0
  store i32 132, i32* %106, align 4
  %107 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %12, i32 0, i32 1
  store i32 27, i32* %107, align 4
  %108 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %12, i32 0, i32 2
  store i32 68, i32* %108, align 4
  %109 = load i32, i32* %20, align 4
  %110 = sub nsw i32 %109, 1
  %111 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %12, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %21, align 4
  %113 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %12, i32 0, i32 4
  store i32 %112, i32* %113, align 4
  %114 = bitcast %struct.dp_audio_infoframe* %12 to i32*
  store i32* %114, i32** %15, align 8
  br label %122

115:                                              ; preds = %3
  %116 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %117 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %116, i32 0, i32 0
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %197

122:                                              ; preds = %104, %103
  %123 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %124 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %125 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @hdac_hdmi_set_dip_index(%struct.hdac_device* %123, i32 %126, i32 0, i32 0)
  %128 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %129 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %130 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AC_VERB_SET_HDMI_DIP_XMIT, align 4
  %133 = load i32, i32* @AC_DIPXMIT_DISABLE, align 4
  %134 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %128, i32 %131, i32 0, i32 %132, i32 %133)
  %135 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %136 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %137 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @hdac_hdmi_set_dip_index(%struct.hdac_device* %135, i32 %138, i32 0, i32 0)
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %163

142:                                              ; preds = %122
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %159, %142
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nuw i64 4, %26
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %150 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %151 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AC_VERB_SET_HDMI_DIP_DATA, align 4
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %28, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %149, i32 %152, i32 0, i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %143

162:                                              ; preds = %143
  br label %184

163:                                              ; preds = %122
  store i32 0, i32* %17, align 4
  br label %164

164:                                              ; preds = %180, %163
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ult i64 %166, 20
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %170 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %171 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AC_VERB_SET_HDMI_DIP_DATA, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %169, i32 %172, i32 0, i32 %173, i32 %178)
  br label %180

180:                                              ; preds = %168
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %164

183:                                              ; preds = %164
  br label %184

184:                                              ; preds = %183, %162
  %185 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %186 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %187 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @hdac_hdmi_set_dip_index(%struct.hdac_device* %185, i32 %188, i32 0, i32 0)
  %190 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %191 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %11, align 8
  %192 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AC_VERB_SET_HDMI_DIP_XMIT, align 4
  %195 = load i32, i32* @AC_DIPXMIT_BEST, align 4
  %196 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %190, i32 %193, i32 0, i32 %194, i32 %195)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %197

197:                                              ; preds = %184, %115, %101
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #2

declare dso_local i32 @snd_hdac_channel_allocation(%struct.hdac_device*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @snd_hdac_get_active_channels(i32) #2

declare dso_local i32 @snd_hdac_setup_channel_mapping(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @drm_eld_get_conn_type(i32*) #2

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #2

declare dso_local i32 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #2

declare dso_local i32 @memset(%struct.dp_audio_infoframe*, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @hdac_hdmi_set_dip_index(%struct.hdac_device*, i32, i32, i32) #2

declare dso_local i32 @snd_hdac_codec_write(%struct.hdac_device*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
