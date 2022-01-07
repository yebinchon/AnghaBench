; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks.c_get_hardware_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks.c_get_hardware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32, i32, i64, i64, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.fw_device = type { i32 }
%struct.snd_efw_hwinfo = type { i32, i8*, i8*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Fireworks\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s %s v%s, GUID %08x%08x at %s, S%d\00", align 1
@FLAG_RESP_ADDR_CHANGABLE = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_22050 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_176400 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_192000 = common dso_local global i32 0, align 4
@SND_EFW_MAX_MIDI_OUT_PORTS = common dso_local global i64 0, align 8
@SND_EFW_MAX_MIDI_IN_PORTS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AM824_MAX_CHANNELS_FOR_PCM = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@HWINFO_MAX_CAPS_GROUPS = common dso_local global i32 0, align 4
@MODEL_ECHO_AUDIOFIRE_9 = common dso_local global i64 0, align 8
@MODEL_ECHO_AUDIOFIRE_2 = common dso_local global i64 0, align 8
@MODEL_ECHO_AUDIOFIRE_4 = common dso_local global i64 0, align 8
@MODEL_GIBSON_RIP = common dso_local global i64 0, align 8
@MODEL_GIBSON_GOLDTOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*)* @get_hardware_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hardware_info(%struct.snd_efw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca %struct.snd_efw_hwinfo*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %3, align 8
  %8 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %9 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %8, i32 0, i32 15
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.fw_device* @fw_parent_device(%struct.TYPE_4__* %10)
  store %struct.fw_device* %11, %struct.fw_device** %4, align 8
  %12 = bitcast [12 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 12, i1 false)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.snd_efw_hwinfo* @kzalloc(i32 152, i32 %13)
  store %struct.snd_efw_hwinfo* %14, %struct.snd_efw_hwinfo** %5, align 8
  %15 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %16 = icmp eq %struct.snd_efw_hwinfo* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %451

20:                                               ; preds = %1
  %21 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %22 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %23 = call i32 @snd_efw_command_get_hwinfo(%struct.snd_efw* %21, %struct.snd_efw_hwinfo* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %447

27:                                               ; preds = %20
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %29 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %30 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 255
  %34 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %35 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %41 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %44 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %46 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %45, i32 0, i32 16
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %52 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %51, i32 0, i32 16
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %57 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcpy(i32 %55, i8* %58)
  %60 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %61 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %60, i32 0, i32 16
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %66 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcpy(i32 %64, i8* %67)
  %69 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %70 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %69, i32 0, i32 16
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %77 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %80 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %83 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %84 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %87 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %90 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %89, i32 0, i32 15
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @dev_name(i32* %92)
  %94 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %95 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 100, %96
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %81, i8* %82, i32 %85, i8* %88, i32 %93, i32 %97)
  %99 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %100 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FLAG_RESP_ADDR_CHANGABLE, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %27
  %107 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %108 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %27
  %110 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %111 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %110, i32 0, i32 14
  store i32 0, i32* %111, align 8
  %112 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %113 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = icmp sle i32 %114, 22050
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %118 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = icmp sle i32 22050, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @SNDRV_PCM_RATE_22050, align 4
  %123 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %124 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %116, %109
  %128 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %129 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %130, 32000
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %134 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = icmp sle i32 32000, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %139 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %140 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %139, i32 0, i32 14
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %132, %127
  %144 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %145 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = icmp sle i32 %146, 44100
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %150 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = icmp sle i32 44100, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %155 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %156 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %148, %143
  %160 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %161 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %162, 48000
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %166 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = icmp sle i32 48000, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %171 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %172 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %164, %159
  %176 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %177 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 88200
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %182 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = icmp sle i32 88200, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %187 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %188 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %187, i32 0, i32 14
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %180, %175
  %192 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %193 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = icmp sle i32 %194, 96000
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %198 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = icmp sle i32 96000, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %203 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %204 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196, %191
  %208 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %209 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = icmp sle i32 %210, 176400
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %214 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = icmp sle i32 176400, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* @SNDRV_PCM_RATE_176400, align 4
  %219 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %220 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %219, i32 0, i32 14
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %212, %207
  %224 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %225 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = icmp sle i32 %226, 192000
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %230 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = icmp sle i32 192000, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load i32, i32* @SNDRV_PCM_RATE_192000, align 4
  %235 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %236 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %235, i32 0, i32 14
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %228, %223
  %240 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %241 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @SND_EFW_MAX_MIDI_OUT_PORTS, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %247 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %246, i32 0, i32 9
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @SND_EFW_MAX_MIDI_IN_PORTS, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245, %239
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %7, align 4
  br label %447

254:                                              ; preds = %245
  %255 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %256 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %255, i32 0, i32 8
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %259 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %258, i32 0, i32 2
  store i64 %257, i64* %259, align 8
  %260 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %261 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %260, i32 0, i32 9
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %264 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %263, i32 0, i32 3
  store i64 %262, i64* %264, align 8
  %265 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %266 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %265, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %300, label %270

270:                                              ; preds = %254
  %271 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %272 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %271, i32 0, i32 11
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %275 = icmp sgt i64 %273, %274
  br i1 %275, label %300, label %276

276:                                              ; preds = %270
  %277 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %278 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %277, i32 0, i32 12
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %281 = icmp sgt i64 %279, %280
  br i1 %281, label %300, label %282

282:                                              ; preds = %276
  %283 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %284 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %283, i32 0, i32 13
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %287 = icmp sgt i64 %285, %286
  br i1 %287, label %300, label %288

288:                                              ; preds = %282
  %289 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %290 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %289, i32 0, i32 14
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %293 = icmp sgt i64 %291, %292
  br i1 %293, label %300, label %294

294:                                              ; preds = %288
  %295 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %296 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %295, i32 0, i32 15
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %299 = icmp sgt i64 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %294, %288, %282, %276, %270, %254
  %301 = load i32, i32* @ENOSYS, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %7, align 4
  br label %447

303:                                              ; preds = %294
  %304 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %305 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %304, i32 0, i32 10
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %308 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %307, i32 0, i32 4
  %309 = load i64*, i64** %308, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 0
  store i64 %306, i64* %310, align 8
  %311 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %312 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %311, i32 0, i32 11
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %315 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %314, i32 0, i32 4
  %316 = load i64*, i64** %315, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 1
  store i64 %313, i64* %317, align 8
  %318 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %319 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %318, i32 0, i32 12
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %322 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %321, i32 0, i32 4
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 2
  store i64 %320, i64* %324, align 8
  %325 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %326 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %325, i32 0, i32 13
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %329 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %328, i32 0, i32 5
  %330 = load i64*, i64** %329, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 0
  store i64 %327, i64* %331, align 8
  %332 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %333 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %332, i32 0, i32 14
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %336 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %335, i32 0, i32 5
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 1
  store i64 %334, i64* %338, align 8
  %339 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %340 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %339, i32 0, i32 15
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %343 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %342, i32 0, i32 5
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 2
  store i64 %341, i64* %345, align 8
  %346 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %347 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %346, i32 0, i32 16
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @HWINFO_MAX_CAPS_GROUPS, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %357, label %351

351:                                              ; preds = %303
  %352 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %353 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %352, i32 0, i32 17
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @HWINFO_MAX_CAPS_GROUPS, align 4
  %356 = icmp sgt i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %351, %303
  %358 = load i32, i32* @EIO, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %7, align 4
  br label %447

360:                                              ; preds = %351
  %361 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %362 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %361, i32 0, i32 22
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %365 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %364, i32 0, i32 13
  store i32 %363, i32* %365, align 4
  %366 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %367 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %366, i32 0, i32 21
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %370 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %369, i32 0, i32 12
  store i32 %368, i32* %370, align 8
  %371 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %372 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %371, i32 0, i32 16
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %375 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %374, i32 0, i32 6
  store i32 %373, i32* %375, align 8
  %376 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %377 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %376, i32 0, i32 17
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %380 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %379, i32 0, i32 7
  store i32 %378, i32* %380, align 4
  %381 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %382 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %381, i32 0, i32 11
  %383 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %384 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %383, i32 0, i32 20
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %387 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %386, i32 0, i32 16
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = mul i64 4, %389
  %391 = trunc i64 %390 to i32
  %392 = call i32 @memcpy(i32* %382, i32 %385, i32 %391)
  %393 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %394 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %393, i32 0, i32 10
  %395 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %396 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %395, i32 0, i32 19
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %399 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %398, i32 0, i32 17
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = mul i64 4, %401
  %403 = trunc i64 %402 to i32
  %404 = call i32 @memcpy(i32* %394, i32 %397, i32 %403)
  %405 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %406 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %405, i32 0, i32 18
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @MODEL_ECHO_AUDIOFIRE_9, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %413

410:                                              ; preds = %360
  %411 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %412 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %411, i32 0, i32 8
  store i32 1, i32* %412, align 8
  br label %413

413:                                              ; preds = %410, %360
  %414 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %415 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %414, i32 0, i32 18
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @MODEL_ECHO_AUDIOFIRE_2, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %443, label %419

419:                                              ; preds = %413
  %420 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %421 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %420, i32 0, i32 18
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @MODEL_ECHO_AUDIOFIRE_4, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %443, label %425

425:                                              ; preds = %419
  %426 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %427 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %426, i32 0, i32 18
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @MODEL_ECHO_AUDIOFIRE_9, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %443, label %431

431:                                              ; preds = %425
  %432 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %433 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %432, i32 0, i32 18
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @MODEL_GIBSON_RIP, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %443, label %437

437:                                              ; preds = %431
  %438 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %439 = getelementptr inbounds %struct.snd_efw_hwinfo, %struct.snd_efw_hwinfo* %438, i32 0, i32 18
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @MODEL_GIBSON_GOLDTOP, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %437, %431, %425, %419, %413
  %444 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %445 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %444, i32 0, i32 9
  store i32 1, i32* %445, align 4
  br label %446

446:                                              ; preds = %443, %437
  br label %447

447:                                              ; preds = %446, %357, %300, %251, %26
  %448 = load %struct.snd_efw_hwinfo*, %struct.snd_efw_hwinfo** %5, align 8
  %449 = call i32 @kfree(%struct.snd_efw_hwinfo* %448)
  %450 = load i32, i32* %7, align 4
  store i32 %450, i32* %2, align 4
  br label %451

451:                                              ; preds = %447, %17
  %452 = load i32, i32* %2, align 4
  ret i32 %452
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.snd_efw_hwinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_efw_command_get_hwinfo(%struct.snd_efw*, %struct.snd_efw_hwinfo*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_efw_hwinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
