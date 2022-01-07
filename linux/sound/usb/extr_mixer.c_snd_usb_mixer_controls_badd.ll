; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_controls_badd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_controls_badd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_ctl_map = type { i32, i32 }
%struct.uac3_badd_profile = type { i32, i32, i64 }
%struct.usb_mixer_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface_assoc_descriptor = type { i32, i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface*, %struct.usb_interface_assoc_descriptor* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_audio_term = type { i8*, i32 }
%struct.TYPE_5__ = type { i8, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [48 x i8] c"incorrect wMaxPacketSize 0x%x for BADD profile\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"UAC3 BADD profile 0x%x: detected c_chmask=%d p_chmask=%d\0A\00", align 1
@uac3_badd_usbmix_ctl_maps = common dso_local global %struct.usbmix_ctl_map* null, align 8
@uac3_badd_profiles = common dso_local global %struct.uac3_badd_profile* null, align 8
@UAC_FU_MUTE = common dso_local global i32 0, align 4
@UAC3_BADD_FU_ID2 = common dso_local global i32 0, align 4
@UAC_FU_VOLUME = common dso_local global i32 0, align 4
@UAC3_BADD_FU_ID5 = common dso_local global i32 0, align 4
@UAC3_BADD_FU_ID7 = common dso_local global i32 0, align 4
@UAC3_FUNCTION_SUBCLASS_HEADSET_ADAPTER = common dso_local global i32 0, align 4
@UAC3_BADD_IT_ID4 = common dso_local global i32 0, align 4
@UAC_BIDIR_TERMINAL_HEADSET = common dso_local global i8* null, align 8
@UAC3_BADD_OT_ID3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32)* @snd_usb_mixer_controls_badd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_mixer_controls_badd(%struct.usb_mixer_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uac3_badd_profile*, align 8
  %10 = alloca %struct.usbmix_ctl_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_interface*, align 8
  %17 = alloca %struct.usb_host_interface*, align 8
  %18 = alloca %struct.usb_interface_descriptor*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.usb_audio_term, align 8
  %24 = alloca %struct.usb_audio_term, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %25 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.usb_device*, %struct.usb_device** %28, align 8
  store %struct.usb_device* %29, %struct.usb_device** %6, align 8
  %30 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %35, i32 %36)
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 2
  %39 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %38, align 8
  store %struct.usb_interface_assoc_descriptor* %39, %struct.usb_interface_assoc_descriptor** %7, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %116, %2
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %43 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %40
  %47 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %48 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %116

56:                                               ; preds = %46
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %57, i32 %58)
  store %struct.usb_interface* %59, %struct.usb_interface** %16, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %269

68:                                               ; preds = %56
  %69 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %70 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %69, i32 0, i32 1
  %71 = load %struct.usb_host_interface*, %struct.usb_host_interface** %70, align 8
  %72 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %71, i64 1
  store %struct.usb_host_interface* %72, %struct.usb_host_interface** %17, align 8
  %73 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  %74 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %73)
  store %struct.usb_interface_descriptor* %74, %struct.usb_interface_descriptor** %18, align 8
  %75 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %18, align 8
  %76 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %269

82:                                               ; preds = %68
  %83 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  %84 = call %struct.TYPE_5__* @get_endpoint(%struct.usb_host_interface* %83, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @USB_DIR_IN, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %20, align 1
  %92 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  %93 = call %struct.TYPE_5__* @get_endpoint(%struct.usb_host_interface* %92, i32 0)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  switch i32 %97, label %98 [
    i32 131, label %106
    i32 135, label %106
    i32 130, label %106
    i32 134, label %106
    i32 129, label %107
    i32 133, label %107
    i32 128, label %107
    i32 132, label %107
  ]

98:                                               ; preds = %82
  %99 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @usb_audio_err(%struct.TYPE_4__* %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %269

106:                                              ; preds = %82, %82, %82, %82
  store i32 1, i32* %21, align 4
  br label %108

107:                                              ; preds = %82, %82, %82, %82
  store i32 3, i32* %21, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i8, i8* %20, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %21, align 4
  store i32 %112, i32* %12, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %21, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %111
  br label %116

116:                                              ; preds = %115, %55
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %40

119:                                              ; preds = %40
  %120 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %121 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @usb_audio_dbg(%struct.TYPE_4__* %122, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  %127 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** @uac3_badd_usbmix_ctl_maps, align 8
  store %struct.usbmix_ctl_map* %127, %struct.usbmix_ctl_map** %10, align 8
  br label %128

128:                                              ; preds = %141, %119
  %129 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %130 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %135 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %144

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %143 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %142, i32 1
  store %struct.usbmix_ctl_map* %143, %struct.usbmix_ctl_map** %10, align 8
  br label %128

144:                                              ; preds = %139, %128
  %145 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %146 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %269

152:                                              ; preds = %144
  %153 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** @uac3_badd_profiles, align 8
  store %struct.uac3_badd_profile* %153, %struct.uac3_badd_profile** %9, align 8
  br label %154

154:                                              ; preds = %167, %152
  %155 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %156 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %162 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %170

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %169 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %168, i32 1
  store %struct.uac3_badd_profile* %169, %struct.uac3_badd_profile** %9, align 8
  br label %154

170:                                              ; preds = %165, %154
  %171 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %172 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %269

178:                                              ; preds = %170
  %179 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %180 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @uac3_badd_func_has_valid_channels(%struct.usb_mixer_interface* %179, %struct.uac3_badd_profile* %180, i32 %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %178
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %269

188:                                              ; preds = %178
  %189 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %190 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %188
  %195 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %196 = load i32, i32* @UAC_FU_MUTE, align 4
  %197 = load i32, i32* @UAC3_BADD_FU_ID2, align 4
  %198 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %199 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %195, i32 0, i32 %196, i32 %197, i32 %200)
  %202 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @UAC_FU_VOLUME, align 4
  %205 = load i32, i32* @UAC3_BADD_FU_ID2, align 4
  %206 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %207 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %202, i32 %203, i32 %204, i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %194, %188
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %210
  %214 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %215 = load i32, i32* @UAC_FU_MUTE, align 4
  %216 = load i32, i32* @UAC3_BADD_FU_ID5, align 4
  %217 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %218 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %214, i32 0, i32 %215, i32 %216, i32 %219)
  %221 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @UAC_FU_VOLUME, align 4
  %224 = load i32, i32* @UAC3_BADD_FU_ID5, align 4
  %225 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %226 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %221, i32 %222, i32 %223, i32 %224, i32 %227)
  br label %229

229:                                              ; preds = %213, %210
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %234 = load i32, i32* @UAC_FU_MUTE, align 4
  %235 = load i32, i32* @UAC3_BADD_FU_ID7, align 4
  %236 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %237 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %233, i32 0, i32 %234, i32 %235, i32 %238)
  %240 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %241 = load i32, i32* @UAC_FU_VOLUME, align 4
  %242 = load i32, i32* @UAC3_BADD_FU_ID7, align 4
  %243 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %10, align 8
  %244 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @build_feature_ctl_badd(%struct.usb_mixer_interface* %240, i32 1, i32 %241, i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %232, %229
  %248 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %9, align 8
  %249 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @UAC3_FUNCTION_SUBCLASS_HEADSET_ADAPTER, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %268

253:                                              ; preds = %247
  %254 = call i32 @memset(%struct.usb_audio_term* %23, i32 0, i32 16)
  %255 = load i32, i32* @UAC3_BADD_IT_ID4, align 4
  %256 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %23, i32 0, i32 1
  store i32 %255, i32* %256, align 8
  %257 = load i8*, i8** @UAC_BIDIR_TERMINAL_HEADSET, align 8
  %258 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %23, i32 0, i32 0
  store i8* %257, i8** %258, align 8
  %259 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %260 = call i32 @build_connector_control(%struct.usb_mixer_interface* %259, %struct.usb_audio_term* %23, i32 1)
  %261 = call i32 @memset(%struct.usb_audio_term* %24, i32 0, i32 16)
  %262 = load i32, i32* @UAC3_BADD_OT_ID3, align 4
  %263 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %24, i32 0, i32 1
  store i32 %262, i32* %263, align 8
  %264 = load i8*, i8** @UAC_BIDIR_TERMINAL_HEADSET, align 8
  %265 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %24, i32 0, i32 0
  store i8* %264, i8** %265, align 8
  %266 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %267 = call i32 @build_connector_control(%struct.usb_mixer_interface* %266, %struct.usb_audio_term* %24, i32 0)
  br label %268

268:                                              ; preds = %253, %247
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %268, %185, %175, %149, %98, %79, %65
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.TYPE_5__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.TYPE_4__*, i8*, i32, i32, i32) #1

declare dso_local i32 @uac3_badd_func_has_valid_channels(%struct.usb_mixer_interface*, %struct.uac3_badd_profile*, i32, i32) #1

declare dso_local i32 @build_feature_ctl_badd(%struct.usb_mixer_interface*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.usb_audio_term*, i32, i32) #1

declare dso_local i32 @build_connector_control(%struct.usb_mixer_interface*, %struct.usb_audio_term*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
