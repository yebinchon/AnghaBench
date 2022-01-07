; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.device_node*, i32* }
%struct.TYPE_13__ = type { %struct.device_node*, i32* }
%struct.TYPE_12__ = type { %struct.device_node*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.device_node*, i32* }
%struct.TYPE_17__ = type { %struct.device_node*, i32* }
%struct.platform_device = type { %struct.TYPE_19__ }
%struct.rx51_audio_pdata = type { i8*, i8*, i8*, i8* }

@rx51_sound_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"nokia,omap3-n900\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nokia,cpu-dai\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"McBSP node is not provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rx51_dai = common dso_local global %struct.TYPE_16__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"nokia,audio-codec\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Codec node is not provided\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Auxiliary Codec node is not provided\0A\00", align 1
@rx51_aux_dev = common dso_local global %struct.TYPE_18__* null, align 8
@rx51_codec_conf = common dso_local global %struct.TYPE_17__* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"nokia,headphone-amplifier\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Headphone amplifier node is not provided\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"tvout-selection\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"could not get tvout selection gpio\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"jack-detection\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"could not get jack detection gpio\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"eci-switch\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"could not get eci switch gpio\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"speaker-amplifier\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"could not get speaker enable gpio\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rx51_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx51_soc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rx51_audio_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  store %struct.snd_soc_card* @rx51_sound_card, %struct.snd_soc_card** %6, align 8
  %13 = call i32 (...) @machine_is_nokia_rx51()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %254

21:                                               ; preds = %15, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %28, label %138

28:                                               ; preds = %21
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %30, %struct.device_node** %8, align 8
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %254

39:                                               ; preds = %28
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %8, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store %struct.device_node* %50, %struct.device_node** %55, align 8
  %56 = load %struct.device_node*, %struct.device_node** %8, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store %struct.device_node* %56, %struct.device_node** %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %63, %struct.device_node** %8, align 8
  %64 = load %struct.device_node*, %struct.device_node** %8, align 8
  %65 = icmp ne %struct.device_node* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %39
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %254

72:                                               ; preds = %39
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.device_node*, %struct.device_node** %8, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rx51_dai, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store %struct.device_node* %78, %struct.device_node** %83, align 8
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store %struct.device_node* %85, %struct.device_node** %8, align 8
  %86 = load %struct.device_node*, %struct.device_node** %8, align 8
  %87 = icmp ne %struct.device_node* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %72
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %254

94:                                               ; preds = %72
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** @rx51_aux_dev, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %8, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** @rx51_aux_dev, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store %struct.device_node* %99, %struct.device_node** %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** @rx51_codec_conf, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %8, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** @rx51_codec_conf, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store %struct.device_node* %107, %struct.device_node** %110, align 8
  %111 = load %struct.device_node*, %struct.device_node** %5, align 8
  %112 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.device_node* %112, %struct.device_node** %8, align 8
  %113 = load %struct.device_node*, %struct.device_node** %8, align 8
  %114 = icmp ne %struct.device_node* %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %94
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %254

121:                                              ; preds = %94
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** @rx51_aux_dev, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  %126 = load %struct.device_node*, %struct.device_node** %8, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** @rx51_aux_dev, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store %struct.device_node* %126, %struct.device_node** %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** @rx51_codec_conf, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load %struct.device_node*, %struct.device_node** %8, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** @rx51_codec_conf, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store %struct.device_node* %134, %struct.device_node** %137, align 8
  br label %138

138:                                              ; preds = %121, %21
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call %struct.rx51_audio_pdata* @devm_kzalloc(%struct.TYPE_19__* %140, i32 32, i32 %141)
  store %struct.rx51_audio_pdata* %142, %struct.rx51_audio_pdata** %4, align 8
  %143 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %144 = icmp eq %struct.rx51_audio_pdata* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %254

148:                                              ; preds = %138
  %149 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %150 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %151 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %149, %struct.rx51_audio_pdata* %150)
  %152 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %153 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %152, i32 0, i32 0
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %156 = call i8* @devm_gpiod_get(%struct.TYPE_19__* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %158 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %160 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @IS_ERR(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %148
  %165 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %166 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %165, i32 0, i32 0
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %169 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %170 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @PTR_ERR(i8* %171)
  store i32 %172, i32* %2, align 4
  br label %254

173:                                              ; preds = %148
  %174 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %175 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %174, i32 0, i32 0
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = load i32, i32* @GPIOD_ASIS, align 4
  %178 = call i8* @devm_gpiod_get(%struct.TYPE_19__* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %177)
  %179 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %180 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  %181 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %182 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @IS_ERR(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %173
  %187 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %188 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %187, i32 0, i32 0
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %191 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %192 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @PTR_ERR(i8* %193)
  store i32 %194, i32* %2, align 4
  br label %254

195:                                              ; preds = %173
  %196 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %197 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %196, i32 0, i32 0
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %200 = call i8* @devm_gpiod_get(%struct.TYPE_19__* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %199)
  %201 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %202 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %204 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @IS_ERR(i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %195
  %209 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %210 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %209, i32 0, i32 0
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %213 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %214 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @PTR_ERR(i8* %215)
  store i32 %216, i32* %2, align 4
  br label %254

217:                                              ; preds = %195
  %218 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %219 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %218, i32 0, i32 0
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %222 = call i8* @devm_gpiod_get(%struct.TYPE_19__* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %221)
  %223 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %224 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %226 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i64 @IS_ERR(i8* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %217
  %231 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %232 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %231, i32 0, i32 0
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %233, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %235 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %236 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @PTR_ERR(i8* %237)
  store i32 %238, i32* %2, align 4
  br label %254

239:                                              ; preds = %217
  %240 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %241 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %240, i32 0, i32 0
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %241, align 8
  %243 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %244 = call i32 @devm_snd_soc_register_card(%struct.TYPE_19__* %242, %struct.snd_soc_card* %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load i32, i32* %7, align 4
  %251 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %249, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %2, align 4
  br label %254

253:                                              ; preds = %239
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %253, %247, %230, %208, %186, %164, %145, %115, %88, %66, %33, %18
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @machine_is_nokia_rx51(...) #1

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.rx51_audio_pdata* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.rx51_audio_pdata*) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_19__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
