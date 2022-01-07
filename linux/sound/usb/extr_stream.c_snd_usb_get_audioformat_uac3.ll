; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_get_audioformat_uac3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_get_audioformat_uac3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i64, i32, i8*, i8*, i64, i32, i32, %struct.uac3_hc_descriptor_header* }
%struct.uac3_hc_descriptor_header = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.snd_usb_audio = type { i8, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32, i32 }
%struct.snd_usb_power_domain = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.uac3_input_terminal_descriptor = type { i32 }
%struct.uac3_output_terminal_descriptor = type { i32 }
%struct.uac3_cluster_header_descriptor = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.uac3_as_header_descriptor = type { i32, i32, i32 }
%struct.snd_pcm_chmap_elem = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@UAC3_FUNCTION_SUBCLASS_GENERIC_IO = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [51 x i8] c"%u:%d : incorrect wMaxPacketSize for BADD profile\0A\00", align 1
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CHMAP_MONO = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FL = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FR = common dso_local global i32 0, align 4
@UAC3_BADD_CS_ID9 = common dso_local global i32 0, align 4
@UAC_AS_GENERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%u:%d : UAC_AS_GENERAL descriptor not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%u:%d : invalid UAC_AS_GENERAL desc\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%u:%d : no cluster descriptor\0A\00", align 1
@UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%u:%d : can't get High Capability descriptor\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%u:%d : can't get Cluster Descriptor\0A\00", align 1
@UAC_VERSION_3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"%u:%d : bogus bTerminalLink %d\0A\00", align 1
@UAC_FORMAT_TYPE_I = common dso_local global i32 0, align 4
@UAC3_BADD_SAMPLING_RATE = common dso_local global i8* null, align 8
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@UAC3_BADD_PD_ID10 = common dso_local global i32 0, align 4
@UAC3_BADD_PD_ID11 = common dso_local global i32 0, align 4
@UAC3_BADD_PD_RECOVER_D1D0 = common dso_local global i32 0, align 4
@UAC3_BADD_PD_RECOVER_D2D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audioformat* (%struct.snd_usb_audio*, %struct.usb_host_interface*, %struct.snd_usb_power_domain**, i32, i32, i32, i32)* @snd_usb_get_audioformat_uac3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audioformat* @snd_usb_get_audioformat_uac3(%struct.snd_usb_audio* %0, %struct.usb_host_interface* %1, %struct.snd_usb_power_domain** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.audioformat*, align 8
  %9 = alloca %struct.snd_usb_audio*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.snd_usb_power_domain**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_device*, align 8
  %17 = alloca %struct.uac3_input_terminal_descriptor*, align 8
  %18 = alloca %struct.uac3_output_terminal_descriptor*, align 8
  %19 = alloca %struct.uac3_cluster_header_descriptor*, align 8
  %20 = alloca %struct.uac3_as_header_descriptor*, align 8
  %21 = alloca %struct.uac3_hc_descriptor_header, align 8
  %22 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %23 = alloca %struct.snd_usb_power_domain*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.audioformat*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %9, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %10, align 8
  store %struct.snd_usb_power_domain** %2, %struct.snd_usb_power_domain*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %33 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %34 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %33, i32 0, i32 2
  %35 = load %struct.usb_device*, %struct.usb_device** %34, align 8
  store %struct.usb_device* %35, %struct.usb_device** %16, align 8
  store %struct.uac3_as_header_descriptor* null, %struct.uac3_as_header_descriptor** %20, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %30, align 4
  %36 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %37 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  store i8 %38, i8* %24, align 1
  %39 = load i8, i8* %24, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @UAC3_FUNCTION_SUBCLASS_GENERIC_IO, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %7
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %46 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %45, i32 0)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le16_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %32, align 4
  %51 = load i32, i32* %32, align 4
  switch i32 %51, label %52 [
    i32 131, label %58
    i32 135, label %58
    i32 130, label %60
    i32 134, label %60
    i32 129, label %62
    i32 133, label %62
    i32 128, label %64
    i32 132, label %64
  ]

52:                                               ; preds = %44
  %53 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

58:                                               ; preds = %44, %44
  %59 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  store i32 %59, i32* %25, align 4
  store i32 1, i32* %26, align 4
  br label %66

60:                                               ; preds = %44, %44
  %61 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3LE, align 4
  store i32 %61, i32* %25, align 4
  store i32 1, i32* %26, align 4
  br label %66

62:                                               ; preds = %44, %44
  %63 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  store i32 %63, i32* %25, align 4
  store i32 2, i32* %26, align 4
  br label %66

64:                                               ; preds = %44, %44
  %65 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3LE, align 4
  store i32 %65, i32* %25, align 4
  store i32 2, i32* %26, align 4
  br label %66

66:                                               ; preds = %64, %62, %60, %58
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.uac3_hc_descriptor_header* @kzalloc(i32 32, i32 %67)
  %69 = bitcast %struct.uac3_hc_descriptor_header* %68 to %struct.snd_pcm_chmap_elem*
  store %struct.snd_pcm_chmap_elem* %69, %struct.snd_pcm_chmap_elem** %22, align 8
  %70 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %71 = icmp ne %struct.snd_pcm_chmap_elem* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.audioformat* @ERR_PTR(i32 %74)
  store %struct.audioformat* %75, %struct.audioformat** %8, align 8
  br label %406

76:                                               ; preds = %66
  %77 = load i32, i32* %26, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @SNDRV_CHMAP_MONO, align 4
  %81 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %80, i32* %84, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %87 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @SNDRV_CHMAP_FR, align 4
  %92 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %79
  %97 = load i32, i32* %26, align 4
  %98 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @UAC3_BADD_CS_ID9, align 4
  store i32 %100, i32* %30, align 4
  br label %294

101:                                              ; preds = %7
  %102 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %103 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %106 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UAC_AS_GENERAL, align 4
  %109 = call %struct.uac3_as_header_descriptor* @snd_usb_find_csint_desc(i32 %104, i32 %107, i32* null, i32 %108)
  store %struct.uac3_as_header_descriptor* %109, %struct.uac3_as_header_descriptor** %20, align 8
  %110 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %111 = icmp ne %struct.uac3_as_header_descriptor* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 0
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

118:                                              ; preds = %101
  %119 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %120 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %122, 12
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 0
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

130:                                              ; preds = %118
  %131 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %132 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le16_to_cpu(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %28, align 4
  %136 = load i32, i32* %28, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  %139 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %140 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %139, i32 0, i32 0
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %142)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

144:                                              ; preds = %130
  %145 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %146 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %145, i32 0, i32 2
  %147 = load %struct.usb_device*, %struct.usb_device** %146, align 8
  %148 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %149 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %148, i32 0, i32 2
  %150 = load %struct.usb_device*, %struct.usb_device** %149, align 8
  %151 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %150, i32 0)
  %152 = load i32, i32* @UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR, align 4
  %153 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %154 = load i32, i32* @USB_TYPE_CLASS, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @USB_DIR_IN, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %28, align 4
  %159 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %160 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %159)
  %161 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %147, i32 %151, i32 %152, i32 %157, i32 %158, i32 %160, %struct.uac3_hc_descriptor_header* %21, i32 32)
  store i32 %161, i32* %31, align 4
  %162 = load i32, i32* %31, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %144
  %165 = load i32, i32* %31, align 4
  %166 = call %struct.audioformat* @ERR_PTR(i32 %165)
  store %struct.audioformat* %166, %struct.audioformat** %8, align 8
  br label %406

167:                                              ; preds = %144
  %168 = load i32, i32* %31, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ne i64 %169, 32
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 0
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  %179 = call %struct.audioformat* @ERR_PTR(i32 %178)
  store %struct.audioformat* %179, %struct.audioformat** %8, align 8
  br label %406

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.uac3_hc_descriptor_header, %struct.uac3_hc_descriptor_header* %21, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @le16_to_cpu(i32 %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %29, align 4
  %186 = load i32, i32* %29, align 4
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call %struct.uac3_hc_descriptor_header* @kzalloc(i32 %186, i32 %187)
  %189 = bitcast %struct.uac3_hc_descriptor_header* %188 to %struct.uac3_cluster_header_descriptor*
  store %struct.uac3_cluster_header_descriptor* %189, %struct.uac3_cluster_header_descriptor** %19, align 8
  %190 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %191 = icmp ne %struct.uac3_cluster_header_descriptor* %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %181
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  %195 = call %struct.audioformat* @ERR_PTR(i32 %194)
  store %struct.audioformat* %195, %struct.audioformat** %8, align 8
  br label %406

196:                                              ; preds = %181
  %197 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %198 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %197, i32 0, i32 2
  %199 = load %struct.usb_device*, %struct.usb_device** %198, align 8
  %200 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %201 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %200, i32 0, i32 2
  %202 = load %struct.usb_device*, %struct.usb_device** %201, align 8
  %203 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %202, i32 0)
  %204 = load i32, i32* @UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR, align 4
  %205 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %206 = load i32, i32* @USB_TYPE_CLASS, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @USB_DIR_IN, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %28, align 4
  %211 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %212 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %211)
  %213 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %214 = bitcast %struct.uac3_cluster_header_descriptor* %213 to %struct.uac3_hc_descriptor_header*
  %215 = load i32, i32* %29, align 4
  %216 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %199, i32 %203, i32 %204, i32 %209, i32 %210, i32 %212, %struct.uac3_hc_descriptor_header* %214, i32 %215)
  store i32 %216, i32* %31, align 4
  %217 = load i32, i32* %31, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %196
  %220 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %221 = bitcast %struct.uac3_cluster_header_descriptor* %220 to %struct.uac3_hc_descriptor_header*
  %222 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %221)
  %223 = load i32, i32* %31, align 4
  %224 = call %struct.audioformat* @ERR_PTR(i32 %223)
  store %struct.audioformat* %224, %struct.audioformat** %8, align 8
  br label %406

225:                                              ; preds = %196
  %226 = load i32, i32* %31, align 4
  %227 = load i32, i32* %29, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %231 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %230, i32 0, i32 0
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %14, align 4
  %234 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %236 = bitcast %struct.uac3_cluster_header_descriptor* %235 to %struct.uac3_hc_descriptor_header*
  %237 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %236)
  %238 = load i32, i32* @EIO, align 4
  %239 = sub nsw i32 0, %238
  %240 = call %struct.audioformat* @ERR_PTR(i32 %239)
  store %struct.audioformat* %240, %struct.audioformat** %8, align 8
  br label %406

241:                                              ; preds = %225
  br label %242

242:                                              ; preds = %241
  %243 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %244 = getelementptr inbounds %struct.uac3_cluster_header_descriptor, %struct.uac3_cluster_header_descriptor* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %26, align 4
  %246 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %247 = bitcast %struct.uac3_cluster_header_descriptor* %246 to %struct.uac3_hc_descriptor_header*
  %248 = call %struct.uac3_hc_descriptor_header* @convert_chmap_v3(%struct.uac3_hc_descriptor_header* %247)
  %249 = bitcast %struct.uac3_hc_descriptor_header* %248 to %struct.snd_pcm_chmap_elem*
  store %struct.snd_pcm_chmap_elem* %249, %struct.snd_pcm_chmap_elem** %22, align 8
  %250 = load %struct.uac3_cluster_header_descriptor*, %struct.uac3_cluster_header_descriptor** %19, align 8
  %251 = bitcast %struct.uac3_cluster_header_descriptor* %250 to %struct.uac3_hc_descriptor_header*
  %252 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %251)
  %253 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %254 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %257 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @UAC_VERSION_3, align 4
  %260 = call %struct.uac3_input_terminal_descriptor* @snd_usb_find_input_terminal_descriptor(i32 %255, i32 %258, i32 %259)
  store %struct.uac3_input_terminal_descriptor* %260, %struct.uac3_input_terminal_descriptor** %17, align 8
  %261 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %17, align 8
  %262 = icmp ne %struct.uac3_input_terminal_descriptor* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %242
  %264 = load %struct.uac3_input_terminal_descriptor*, %struct.uac3_input_terminal_descriptor** %17, align 8
  %265 = getelementptr inbounds %struct.uac3_input_terminal_descriptor, %struct.uac3_input_terminal_descriptor* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %30, align 4
  br label %294

267:                                              ; preds = %242
  %268 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %269 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %272 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @UAC_VERSION_3, align 4
  %275 = call %struct.uac3_output_terminal_descriptor* @snd_usb_find_output_terminal_descriptor(i32 %270, i32 %273, i32 %274)
  store %struct.uac3_output_terminal_descriptor* %275, %struct.uac3_output_terminal_descriptor** %18, align 8
  %276 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %18, align 8
  %277 = icmp ne %struct.uac3_output_terminal_descriptor* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %267
  %279 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %18, align 8
  %280 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %30, align 4
  br label %294

282:                                              ; preds = %267
  %283 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %284 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %283, i32 0, i32 0
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %288 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %285, i32 %286, i32 %289)
  %291 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %292 = bitcast %struct.snd_pcm_chmap_elem* %291 to %struct.uac3_hc_descriptor_header*
  %293 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %292)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

294:                                              ; preds = %278, %263, %96
  %295 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %296 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %297 = load i32, i32* @UAC_VERSION_3, align 4
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %26, align 4
  %302 = load i32, i32* %30, align 4
  %303 = call %struct.audioformat* @audio_format_alloc_init(%struct.snd_usb_audio* %295, %struct.usb_host_interface* %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302)
  store %struct.audioformat* %303, %struct.audioformat** %27, align 8
  %304 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %305 = icmp ne %struct.audioformat* %304, null
  br i1 %305, label %313, label %306

306:                                              ; preds = %294
  %307 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %308 = bitcast %struct.snd_pcm_chmap_elem* %307 to %struct.uac3_hc_descriptor_header*
  %309 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %308)
  %310 = load i32, i32* @ENOMEM, align 4
  %311 = sub nsw i32 0, %310
  %312 = call %struct.audioformat* @ERR_PTR(i32 %311)
  store %struct.audioformat* %312, %struct.audioformat** %8, align 8
  br label %406

313:                                              ; preds = %294
  %314 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %22, align 8
  %315 = bitcast %struct.snd_pcm_chmap_elem* %314 to %struct.uac3_hc_descriptor_header*
  %316 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %317 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %316, i32 0, i32 7
  store %struct.uac3_hc_descriptor_header* %315, %struct.uac3_hc_descriptor_header** %317, align 8
  %318 = load i8, i8* %24, align 1
  %319 = zext i8 %318 to i32
  %320 = load i8, i8* @UAC3_FUNCTION_SUBCLASS_GENERIC_IO, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp sge i32 %319, %321
  br i1 %322, label %323, label %369

323:                                              ; preds = %313
  %324 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %325 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %324, i32 0, i32 0
  store i64 0, i64* %325, align 8
  %326 = load i32, i32* @UAC_FORMAT_TYPE_I, align 4
  %327 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %328 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %327, i32 0, i32 6
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %25, align 4
  %330 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %331 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %330, i32 0, i32 5
  store i32 %329, i32* %331, align 8
  %332 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %333 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %332, i32 0, i32 4
  store i64 0, i64* %333, align 8
  %334 = load i8*, i8** @UAC3_BADD_SAMPLING_RATE, align 8
  %335 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %336 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %335, i32 0, i32 3
  store i8* %334, i8** %336, align 8
  %337 = load i8*, i8** @UAC3_BADD_SAMPLING_RATE, align 8
  %338 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %339 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %338, i32 0, i32 2
  store i8* %337, i8** %339, align 8
  %340 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %341 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %342 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 8
  %343 = load i32, i32* @GFP_KERNEL, align 4
  %344 = call %struct.uac3_hc_descriptor_header* @kzalloc(i32 32, i32 %343)
  %345 = bitcast %struct.uac3_hc_descriptor_header* %344 to %struct.snd_usb_power_domain*
  store %struct.snd_usb_power_domain* %345, %struct.snd_usb_power_domain** %23, align 8
  %346 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %347 = icmp ne %struct.snd_usb_power_domain* %346, null
  br i1 %347, label %351, label %348

348:                                              ; preds = %323
  %349 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %350 = call i32 @audioformat_free(%struct.audioformat* %349)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

351:                                              ; preds = %323
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = load i32, i32* @UAC3_BADD_PD_ID10, align 4
  br label %359

357:                                              ; preds = %351
  %358 = load i32, i32* @UAC3_BADD_PD_ID11, align 4
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %362 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %361, i32 0, i32 4
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* @UAC3_BADD_PD_RECOVER_D1D0, align 4
  %364 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %365 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %364, i32 0, i32 3
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* @UAC3_BADD_PD_RECOVER_D2D0, align 4
  %367 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %368 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %367, i32 0, i32 2
  store i32 %366, i32* %368, align 8
  br label %398

369:                                              ; preds = %313
  %370 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %371 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %372 = load i32, i32* @UAC_VERSION_3, align 4
  %373 = load i32, i32* %12, align 4
  %374 = call i64 @parse_uac_endpoint_attributes(%struct.snd_usb_audio* %370, %struct.usb_host_interface* %371, i32 %372, i32 %373)
  %375 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %376 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %375, i32 0, i32 0
  store i64 %374, i64* %376, align 8
  %377 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %378 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %381 = getelementptr inbounds %struct.uac3_as_header_descriptor, %struct.uac3_as_header_descriptor* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call %struct.uac3_hc_descriptor_header* @snd_usb_find_power_domain(i32 %379, i32 %382)
  %384 = bitcast %struct.uac3_hc_descriptor_header* %383 to %struct.snd_usb_power_domain*
  store %struct.snd_usb_power_domain* %384, %struct.snd_usb_power_domain** %23, align 8
  %385 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  %386 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %387 = load %struct.uac3_as_header_descriptor*, %struct.uac3_as_header_descriptor** %20, align 8
  %388 = load i32, i32* %15, align 4
  %389 = call i64 @snd_usb_parse_audio_format_v3(%struct.snd_usb_audio* %385, %struct.audioformat* %386, %struct.uac3_as_header_descriptor* %387, i32 %388)
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %369
  %392 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %393 = bitcast %struct.snd_usb_power_domain* %392 to %struct.uac3_hc_descriptor_header*
  %394 = call i32 @kfree(%struct.uac3_hc_descriptor_header* %393)
  %395 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  %396 = call i32 @audioformat_free(%struct.audioformat* %395)
  store %struct.audioformat* null, %struct.audioformat** %8, align 8
  br label %406

397:                                              ; preds = %369
  br label %398

398:                                              ; preds = %397, %359
  %399 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %400 = icmp ne %struct.snd_usb_power_domain* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %23, align 8
  %403 = load %struct.snd_usb_power_domain**, %struct.snd_usb_power_domain*** %11, align 8
  store %struct.snd_usb_power_domain* %402, %struct.snd_usb_power_domain** %403, align 8
  br label %404

404:                                              ; preds = %401, %398
  %405 = load %struct.audioformat*, %struct.audioformat** %27, align 8
  store %struct.audioformat* %405, %struct.audioformat** %8, align 8
  br label %406

406:                                              ; preds = %404, %391, %348, %306, %282, %229, %219, %192, %171, %164, %138, %124, %112, %72, %52
  %407 = load %struct.audioformat*, %struct.audioformat** %8, align 8
  ret %struct.audioformat* %407
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local %struct.uac3_hc_descriptor_header* @kzalloc(i32, i32) #1

declare dso_local %struct.audioformat* @ERR_PTR(i32) #1

declare dso_local %struct.uac3_as_header_descriptor* @snd_usb_find_csint_desc(i32, i32, i32*, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.uac3_hc_descriptor_header*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @kfree(%struct.uac3_hc_descriptor_header*) #1

declare dso_local %struct.uac3_hc_descriptor_header* @convert_chmap_v3(%struct.uac3_hc_descriptor_header*) #1

declare dso_local %struct.uac3_input_terminal_descriptor* @snd_usb_find_input_terminal_descriptor(i32, i32, i32) #1

declare dso_local %struct.uac3_output_terminal_descriptor* @snd_usb_find_output_terminal_descriptor(i32, i32, i32) #1

declare dso_local %struct.audioformat* @audio_format_alloc_init(%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @audioformat_free(%struct.audioformat*) #1

declare dso_local i64 @parse_uac_endpoint_attributes(%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32) #1

declare dso_local %struct.uac3_hc_descriptor_header* @snd_usb_find_power_domain(i32, i32) #1

declare dso_local i64 @snd_usb_parse_audio_format_v3(%struct.snd_usb_audio*, %struct.audioformat*, %struct.uac3_as_header_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
