; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_15__*, %struct.device_node* }
%struct.TYPE_15__ = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.of_phandle_args = type { %struct.device_node* }
%struct.imx_audmix = type { i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.platform_device*, %struct.platform_device*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i8*, %struct.device_node* }
%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i8*, %struct.device_node* }

@.str = private unnamed_addr constant [16 x i8] c"HiFi-AUDMIX-FE-\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Missing parent device.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Missing DT node for parent device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Missing AUDMIX platform device for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dais\00", align 1
@FSL_AUDMIX_MAX_DAIS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Need 2 dais to be provided for %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to allocate dai_link\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"of_parse_phandle_with_args failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to find SAI platform device\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"DAI FE name:%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"CPU-Capture\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"HiFi-AUDMIX-FE\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@imx_audmix_fe_ops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"audmix-%d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"AUDMIX-Playback-%d\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"AUDMIX-Capture-%d\00", align 1
@imx_audmix_be_ops = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"CPU-Playback\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"mclk1\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"failed to get DAI mclk1: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"imx-audmix\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"snd_soc_register_card failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_audmix_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_audmix_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca %struct.imx_audmix*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.snd_soc_dai_link_component*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  store %struct.platform_device* null, %struct.platform_device** %7, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.device_node*, %struct.device_node** %35, align 8
  store %struct.device_node* %36, %struct.device_node** %5, align 8
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %778

43:                                               ; preds = %30
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %778

52:                                               ; preds = %43
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %53)
  store %struct.platform_device* %54, %struct.platform_device** %7, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %56 = icmp ne %struct.platform_device* %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = getelementptr inbounds %struct.device_node, %struct.device_node* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %778

66:                                               ; preds = %52
  %67 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @put_device(%struct.TYPE_20__* %68)
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32 @of_count_phandle_with_args(%struct.device_node* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @FSL_AUDMIX_MAX_DAIS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = getelementptr inbounds %struct.device_node, %struct.device_node* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %778

84:                                               ; preds = %66
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kzalloc(%struct.TYPE_20__* %86, i32 128, i32 %87)
  %89 = bitcast i8* %88 to %struct.imx_audmix*
  store %struct.imx_audmix* %89, %struct.imx_audmix** %10, align 8
  %90 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %91 = icmp ne %struct.imx_audmix* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %778

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 2, %96
  %98 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %99 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %103 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @devm_kzalloc(%struct.TYPE_20__* %101, i32 %107, i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_16__*
  %111 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %112 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %111, i32 0, i32 6
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %112, align 8
  %113 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %114 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %113, i32 0, i32 6
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = icmp ne %struct.TYPE_16__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %95
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %778

120:                                              ; preds = %95
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %123 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %127 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @devm_kzalloc(%struct.TYPE_20__* %125, i32 %131, i32 %132)
  %134 = bitcast i8* %133 to %struct.TYPE_17__*
  %135 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %136 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %135, i32 0, i32 5
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %136, align 8
  %137 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %138 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %137, i32 0, i32 5
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = icmp ne %struct.TYPE_17__* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %120
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %778

144:                                              ; preds = %120
  %145 = load i32, i32* %12, align 4
  %146 = mul nsw i32 3, %145
  %147 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %148 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %152 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @devm_kzalloc(%struct.TYPE_20__* %150, i32 %156, i32 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_18__*
  %160 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %161 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %160, i32 0, i32 4
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %161, align 8
  %162 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %163 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %162, i32 0, i32 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = icmp ne %struct.TYPE_18__* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %144
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %778

169:                                              ; preds = %144
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %662, %169
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %665

174:                                              ; preds = %170
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call i8* @devm_kzalloc(%struct.TYPE_20__* %176, i32 144, i32 %177)
  %179 = bitcast i8* %178 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %179, %struct.snd_soc_dai_link_component** %20, align 8
  %180 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %181 = icmp ne %struct.snd_soc_dai_link_component* %180, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %174
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %778

188:                                              ; preds = %174
  %189 = load %struct.device_node*, %struct.device_node** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @of_parse_phandle_with_args(%struct.device_node* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %190, %struct.of_phandle_args* %9)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %2, align 4
  br label %778

199:                                              ; preds = %188
  %200 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %201 = load %struct.device_node*, %struct.device_node** %200, align 8
  %202 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %201)
  store %struct.platform_device* %202, %struct.platform_device** %8, align 8
  %203 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %204 = icmp ne %struct.platform_device* %203, null
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %207, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %778

211:                                              ; preds = %199
  %212 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @put_device(%struct.TYPE_20__* %213)
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = load i8*, i8** %14, align 8
  %219 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %220 = load %struct.device_node*, %struct.device_node** %219, align 8
  %221 = getelementptr inbounds %struct.device_node, %struct.device_node* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %216, i32 %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %218, i8* %223)
  store i8* %224, i8** %18, align 8
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = load i8*, i8** %18, align 8
  %230 = call i32 @dev_info(%struct.TYPE_15__* %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %229)
  %231 = load i32, i32* %11, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %211
  %234 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %235 = load %struct.device_node*, %struct.device_node** %234, align 8
  store %struct.device_node* %235, %struct.device_node** %6, align 8
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 0
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = load i8*, i8** %18, align 8
  %240 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %237, i32 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i8* %240, i8** %19, align 8
  br label %241

241:                                              ; preds = %233, %211
  %242 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %243 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %242, i64 0
  %244 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %245 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %244, i32 0, i32 6
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 12
  store %struct.snd_soc_dai_link_component* %243, %struct.snd_soc_dai_link_component** %250, align 8
  %251 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %252 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %251, i64 1
  %253 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %254 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %253, i32 0, i32 6
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 13
  store %struct.snd_soc_dai_link_component* %252, %struct.snd_soc_dai_link_component** %259, align 8
  %260 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %261 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %260, i64 2
  %262 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %263 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %262, i32 0, i32 6
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 11
  store %struct.snd_soc_dai_link_component* %261, %struct.snd_soc_dai_link_component** %268, align 8
  %269 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %270 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %269, i32 0, i32 6
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  %276 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %277 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %276, i32 0, i32 6
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  %283 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %284 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %283, i32 0, i32 6
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 2
  store i32 1, i32* %289, align 8
  %290 = load i8*, i8** %18, align 8
  %291 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %292 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %291, i32 0, i32 6
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 3
  store i8* %290, i8** %297, align 8
  %298 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %299 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %298, i32 0, i32 6
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %304, align 8
  %305 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %306 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %305, i32 0, i32 6
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 13
  %312 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %311, align 8
  %313 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %312, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %313, align 8
  %314 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %315 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %314, i32 0, i32 6
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 13
  %321 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %320, align 8
  %322 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %321, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %322, align 8
  %323 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %324 = load %struct.device_node*, %struct.device_node** %323, align 8
  %325 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %326 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %325, i32 0, i32 6
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 12
  %332 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %331, align 8
  %333 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %332, i32 0, i32 2
  store %struct.device_node* %324, %struct.device_node** %333, align 8
  %334 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = call i8* @dev_name(%struct.TYPE_20__* %335)
  %337 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %338 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %337, i32 0, i32 6
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 12
  %344 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %343, align 8
  %345 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %344, i32 0, i32 0
  store i8* %336, i8** %345, align 8
  %346 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %347 = load %struct.device_node*, %struct.device_node** %346, align 8
  %348 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %349 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %348, i32 0, i32 6
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %349, align 8
  %351 = load i32, i32* %11, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 11
  %355 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %354, align 8
  %356 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %355, i32 0, i32 2
  store %struct.device_node* %347, %struct.device_node** %356, align 8
  %357 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %358 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %357, i32 0, i32 6
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 5
  store i32 1, i32* %363, align 8
  %364 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %365 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %364, i32 0, i32 6
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %365, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 6
  store i32 1, i32* %370, align 4
  %371 = load i32, i32* %11, align 4
  %372 = icmp eq i32 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 1, i32 0
  %375 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %376 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %375, i32 0, i32 6
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 7
  store i32 %374, i32* %381, align 8
  %382 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %383 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %382, i32 0, i32 6
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %383, align 8
  %385 = load i32, i32* %11, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 8
  store i32 1, i32* %388, align 4
  %389 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %390 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %389, i32 0, i32 6
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %390, align 8
  %392 = load i32, i32* %11, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 10
  store i32* @imx_audmix_fe_ops, i32** %395, align 8
  %396 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %397 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %396, i32 0, i32 0
  %398 = load i32, i32* @GFP_KERNEL, align 4
  %399 = load i32, i32* %11, align 4
  %400 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %397, i32 %398, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %399)
  store i8* %400, i8** %15, align 8
  %401 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %402 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %401, i32 0, i32 0
  %403 = load i32, i32* @GFP_KERNEL, align 4
  %404 = load i32, i32* %11, align 4
  %405 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %402, i32 %403, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %404)
  store i8* %405, i8** %16, align 8
  %406 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %407 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %406, i32 0, i32 0
  %408 = load i32, i32* @GFP_KERNEL, align 4
  %409 = load i32, i32* %11, align 4
  %410 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %407, i32 %408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %409)
  store i8* %410, i8** %17, align 8
  %411 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %412 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %411, i64 3
  %413 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %414 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %413, i32 0, i32 6
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %414, align 8
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* %11, align 4
  %418 = add nsw i32 %416, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 12
  store %struct.snd_soc_dai_link_component* %412, %struct.snd_soc_dai_link_component** %421, align 8
  %422 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %423 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %422, i64 4
  %424 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %425 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %424, i32 0, i32 6
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %425, align 8
  %427 = load i32, i32* %12, align 4
  %428 = load i32, i32* %11, align 4
  %429 = add nsw i32 %427, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 13
  store %struct.snd_soc_dai_link_component* %423, %struct.snd_soc_dai_link_component** %432, align 8
  %433 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %20, align 8
  %434 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %433, i64 5
  %435 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %436 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %435, i32 0, i32 6
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %436, align 8
  %438 = load i32, i32* %12, align 4
  %439 = load i32, i32* %11, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 11
  store %struct.snd_soc_dai_link_component* %434, %struct.snd_soc_dai_link_component** %443, align 8
  %444 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %445 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %444, i32 0, i32 6
  %446 = load %struct.TYPE_16__*, %struct.TYPE_16__** %445, align 8
  %447 = load i32, i32* %12, align 4
  %448 = load i32, i32* %11, align 4
  %449 = add nsw i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  store i32 1, i32* %452, align 8
  %453 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %454 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %453, i32 0, i32 6
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %454, align 8
  %456 = load i32, i32* %12, align 4
  %457 = load i32, i32* %11, align 4
  %458 = add nsw i32 %456, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i32 0, i32 1
  store i32 1, i32* %461, align 4
  %462 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %463 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %462, i32 0, i32 6
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %463, align 8
  %465 = load i32, i32* %12, align 4
  %466 = load i32, i32* %11, align 4
  %467 = add nsw i32 %465, %466
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 2
  store i32 1, i32* %470, align 8
  %471 = load i8*, i8** %15, align 8
  %472 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %473 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %472, i32 0, i32 6
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %473, align 8
  %475 = load i32, i32* %12, align 4
  %476 = load i32, i32* %11, align 4
  %477 = add nsw i32 %475, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 3
  store i8* %471, i8** %480, align 8
  %481 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %482 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %481, i32 0, i32 6
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %482, align 8
  %484 = load i32, i32* %12, align 4
  %485 = load i32, i32* %11, align 4
  %486 = add nsw i32 %484, %485
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 13
  %490 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %489, align 8
  %491 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %490, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %491, align 8
  %492 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %493 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %492, i32 0, i32 6
  %494 = load %struct.TYPE_16__*, %struct.TYPE_16__** %493, align 8
  %495 = load i32, i32* %12, align 4
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %495, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 13
  %501 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %500, align 8
  %502 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %501, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %502, align 8
  %503 = load %struct.device_node*, %struct.device_node** %5, align 8
  %504 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %505 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %504, i32 0, i32 6
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %505, align 8
  %507 = load i32, i32* %12, align 4
  %508 = load i32, i32* %11, align 4
  %509 = add nsw i32 %507, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 12
  %513 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %512, align 8
  %514 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %513, i32 0, i32 2
  store %struct.device_node* %503, %struct.device_node** %514, align 8
  %515 = load i8*, i8** %15, align 8
  %516 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %517 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %516, i32 0, i32 6
  %518 = load %struct.TYPE_16__*, %struct.TYPE_16__** %517, align 8
  %519 = load i32, i32* %12, align 4
  %520 = load i32, i32* %11, align 4
  %521 = add nsw i32 %519, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %518, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 12
  %525 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %524, align 8
  %526 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %525, i32 0, i32 0
  store i8* %515, i8** %526, align 8
  %527 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %528 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %527, i32 0, i32 6
  %529 = load %struct.TYPE_16__*, %struct.TYPE_16__** %528, align 8
  %530 = load i32, i32* %12, align 4
  %531 = load i32, i32* %11, align 4
  %532 = add nsw i32 %530, %531
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %529, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %534, i32 0, i32 11
  %536 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %535, align 8
  %537 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %536, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %537, align 8
  %538 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %539 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %538, i32 0, i32 6
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %539, align 8
  %541 = load i32, i32* %12, align 4
  %542 = load i32, i32* %11, align 4
  %543 = add nsw i32 %541, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %545, i32 0, i32 9
  store i32 1, i32* %546, align 8
  %547 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %548 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %547, i32 0, i32 6
  %549 = load %struct.TYPE_16__*, %struct.TYPE_16__** %548, align 8
  %550 = load i32, i32* %12, align 4
  %551 = load i32, i32* %11, align 4
  %552 = add nsw i32 %550, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 6
  store i32 1, i32* %555, align 4
  %556 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %557 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %556, i32 0, i32 6
  %558 = load %struct.TYPE_16__*, %struct.TYPE_16__** %557, align 8
  %559 = load i32, i32* %12, align 4
  %560 = load i32, i32* %11, align 4
  %561 = add nsw i32 %559, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %558, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %563, i32 0, i32 7
  store i32 1, i32* %564, align 8
  %565 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %566 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %565, i32 0, i32 6
  %567 = load %struct.TYPE_16__*, %struct.TYPE_16__** %566, align 8
  %568 = load i32, i32* %12, align 4
  %569 = load i32, i32* %11, align 4
  %570 = add nsw i32 %568, %569
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %567, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %572, i32 0, i32 8
  store i32 1, i32* %573, align 4
  %574 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %575 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %574, i32 0, i32 6
  %576 = load %struct.TYPE_16__*, %struct.TYPE_16__** %575, align 8
  %577 = load i32, i32* %12, align 4
  %578 = load i32, i32* %11, align 4
  %579 = add nsw i32 %577, %578
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %576, i64 %580
  %582 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %581, i32 0, i32 10
  store i32* @imx_audmix_be_ops, i32** %582, align 8
  %583 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %584 = load %struct.device_node*, %struct.device_node** %583, align 8
  %585 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %586 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %585, i32 0, i32 5
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %586, align 8
  %588 = load i32, i32* %11, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %587, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %590, i32 0, i32 1
  store %struct.device_node* %584, %struct.device_node** %591, align 8
  %592 = load i8*, i8** %18, align 8
  %593 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %594 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %593, i32 0, i32 5
  %595 = load %struct.TYPE_17__*, %struct.TYPE_17__** %594, align 8
  %596 = load i32, i32* %11, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %595, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %598, i32 0, i32 0
  store i8* %592, i8** %599, align 8
  %600 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %601 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %600, i32 0, i32 0
  %602 = load i32, i32* @GFP_KERNEL, align 4
  %603 = load i8*, i8** %18, align 8
  %604 = call i8* (%struct.TYPE_20__*, i32, i8*, ...) @devm_kasprintf(%struct.TYPE_20__* %601, i32 %602, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %603, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %605 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %606 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %605, i32 0, i32 4
  %607 = load %struct.TYPE_18__*, %struct.TYPE_18__** %606, align 8
  %608 = load i32, i32* %11, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %610, i32 0, i32 0
  store i8* %604, i8** %611, align 8
  %612 = load i8*, i8** %16, align 8
  %613 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %614 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %613, i32 0, i32 4
  %615 = load %struct.TYPE_18__*, %struct.TYPE_18__** %614, align 8
  %616 = load i32, i32* %11, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %615, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %618, i32 0, i32 1
  store i8* %612, i8** %619, align 8
  %620 = load i8*, i8** %16, align 8
  %621 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %622 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %621, i32 0, i32 4
  %623 = load %struct.TYPE_18__*, %struct.TYPE_18__** %622, align 8
  %624 = load i32, i32* %12, align 4
  %625 = load i32, i32* %11, align 4
  %626 = add nsw i32 %624, %625
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %623, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %628, i32 0, i32 0
  store i8* %620, i8** %629, align 8
  %630 = load i8*, i8** %17, align 8
  %631 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %632 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %631, i32 0, i32 4
  %633 = load %struct.TYPE_18__*, %struct.TYPE_18__** %632, align 8
  %634 = load i32, i32* %12, align 4
  %635 = load i32, i32* %11, align 4
  %636 = add nsw i32 %634, %635
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %633, i64 %637
  %639 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %638, i32 0, i32 1
  store i8* %630, i8** %639, align 8
  %640 = load i8*, i8** %17, align 8
  %641 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %642 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %641, i32 0, i32 4
  %643 = load %struct.TYPE_18__*, %struct.TYPE_18__** %642, align 8
  %644 = load i32, i32* %12, align 4
  %645 = mul nsw i32 2, %644
  %646 = load i32, i32* %11, align 4
  %647 = add nsw i32 %645, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %643, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %649, i32 0, i32 0
  store i8* %640, i8** %650, align 8
  %651 = load i8*, i8** %19, align 8
  %652 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %653 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %652, i32 0, i32 4
  %654 = load %struct.TYPE_18__*, %struct.TYPE_18__** %653, align 8
  %655 = load i32, i32* %12, align 4
  %656 = mul nsw i32 2, %655
  %657 = load i32, i32* %11, align 4
  %658 = add nsw i32 %656, %657
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %654, i64 %659
  %661 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %660, i32 0, i32 1
  store i8* %651, i8** %661, align 8
  br label %662

662:                                              ; preds = %241
  %663 = load i32, i32* %11, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %11, align 4
  br label %170

665:                                              ; preds = %170
  %666 = load %struct.device_node*, %struct.device_node** %6, align 8
  %667 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %666)
  store %struct.platform_device* %667, %struct.platform_device** %8, align 8
  %668 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %669 = icmp ne %struct.platform_device* %668, null
  br i1 %669, label %676, label %670

670:                                              ; preds = %665
  %671 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %672 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %671, i32 0, i32 0
  %673 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %672, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %674 = load i32, i32* @EINVAL, align 4
  %675 = sub nsw i32 0, %674
  store i32 %675, i32* %2, align 4
  br label %778

676:                                              ; preds = %665
  %677 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %678 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %677, i32 0, i32 0
  %679 = call i32 @put_device(%struct.TYPE_20__* %678)
  %680 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %681 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %680, i32 0, i32 0
  %682 = call i32 @devm_clk_get(%struct.TYPE_20__* %681, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %683 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %684 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %683, i32 0, i32 9
  store i32 %682, i32* %684, align 8
  %685 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %686 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %685, i32 0, i32 9
  %687 = load i32, i32* %686, align 8
  %688 = call i64 @IS_ERR(i32 %687)
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %701

690:                                              ; preds = %676
  %691 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %692 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %691, i32 0, i32 9
  %693 = load i32, i32* %692, align 8
  %694 = call i32 @PTR_ERR(i32 %693)
  store i32 %694, i32* %13, align 4
  %695 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %696 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %695, i32 0, i32 0
  %697 = load i32, i32* %13, align 4
  %698 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %696, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %697)
  %699 = load i32, i32* @EINVAL, align 4
  %700 = sub nsw i32 0, %699
  store i32 %700, i32* %2, align 4
  br label %778

701:                                              ; preds = %676
  %702 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %703 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %704 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %703, i32 0, i32 8
  store %struct.platform_device* %702, %struct.platform_device** %704, align 8
  %705 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %706 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %707 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %706, i32 0, i32 7
  store %struct.platform_device* %705, %struct.platform_device** %707, align 8
  %708 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %709 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %708, i32 0, i32 6
  %710 = load %struct.TYPE_16__*, %struct.TYPE_16__** %709, align 8
  %711 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %712 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %712, i32 0, i32 8
  store %struct.TYPE_16__* %710, %struct.TYPE_16__** %713, align 8
  %714 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %715 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 8
  %717 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %718 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %717, i32 0, i32 3
  %719 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %718, i32 0, i32 0
  store i32 %716, i32* %719, align 8
  %720 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %721 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %720, i32 0, i32 5
  %722 = load %struct.TYPE_17__*, %struct.TYPE_17__** %721, align 8
  %723 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %724 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %723, i32 0, i32 3
  %725 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %724, i32 0, i32 7
  store %struct.TYPE_17__* %722, %struct.TYPE_17__** %725, align 8
  %726 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %727 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %730 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %729, i32 0, i32 3
  %731 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %730, i32 0, i32 1
  store i32 %728, i32* %731, align 4
  %732 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %733 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %732, i32 0, i32 4
  %734 = load %struct.TYPE_18__*, %struct.TYPE_18__** %733, align 8
  %735 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %736 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %735, i32 0, i32 3
  %737 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %736, i32 0, i32 6
  store %struct.TYPE_18__* %734, %struct.TYPE_18__** %737, align 8
  %738 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %739 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 8
  %741 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %742 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %742, i32 0, i32 2
  store i32 %740, i32* %743, align 8
  %744 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %745 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %744, i32 0, i32 0
  %746 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %747 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %746, i32 0, i32 3
  %748 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %747, i32 0, i32 5
  store %struct.TYPE_20__* %745, %struct.TYPE_20__** %748, align 8
  %749 = load i32, i32* @THIS_MODULE, align 4
  %750 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %751 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %750, i32 0, i32 3
  %752 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %751, i32 0, i32 4
  store i32 %749, i32* %752, align 8
  %753 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %754 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %753, i32 0, i32 3
  %755 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %754, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %755, align 8
  %756 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %757 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %758 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %757, i32 0, i32 3
  %759 = call i32 @platform_set_drvdata(%struct.platform_device* %756, %struct.TYPE_19__* %758)
  %760 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %761 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %760, i32 0, i32 3
  %762 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %763 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_19__* %761, %struct.imx_audmix* %762)
  %764 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %765 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %764, i32 0, i32 0
  %766 = load %struct.imx_audmix*, %struct.imx_audmix** %10, align 8
  %767 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %766, i32 0, i32 3
  %768 = call i32 @devm_snd_soc_register_card(%struct.TYPE_20__* %765, %struct.TYPE_19__* %767)
  store i32 %768, i32* %13, align 4
  %769 = load i32, i32* %13, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %776

771:                                              ; preds = %701
  %772 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %773 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %772, i32 0, i32 0
  %774 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %773, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %775 = load i32, i32* %13, align 4
  store i32 %775, i32* %2, align 4
  br label %778

776:                                              ; preds = %701
  %777 = load i32, i32* %13, align 4
  store i32 %777, i32* %2, align 4
  br label %778

778:                                              ; preds = %776, %771, %690, %670, %205, %194, %182, %166, %141, %117, %92, %75, %57, %46, %37
  %779 = load i32, i32* %2, align 4
  ret i32 %779
}

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @put_device(%struct.TYPE_20__*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i32*, i32, %struct.of_phandle_args*) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_20__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_19__*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_19__*, %struct.imx_audmix*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
