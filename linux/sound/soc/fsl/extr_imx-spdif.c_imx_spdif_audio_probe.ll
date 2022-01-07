; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-spdif.c_imx_spdif_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-spdif.c_imx_spdif_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_spdif_data = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i32, i32, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i8*, %struct.device_node* }

@.str = private unnamed_addr constant [17 x i8] c"spdif-controller\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to find spdif-controller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"S/PDIF PCM\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"spdif-out\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"spdif-in\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"no enabled S/PDIF DAI link\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"snd_soc_register_card failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_spdif_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_spdif_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.imx_spdif_data*, align 8
  %6 = alloca %struct.snd_soc_dai_link_component*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %13, %struct.device_node** %3, align 8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %174

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.TYPE_9__* %24, i32 88, i32 %25)
  %27 = bitcast i8* %26 to %struct.imx_spdif_data*
  store %struct.imx_spdif_data* %27, %struct.imx_spdif_data** %5, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(%struct.TYPE_9__* %29, i32 72, i32 %30)
  %32 = bitcast i8* %31 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %32, %struct.snd_soc_dai_link_component** %6, align 8
  %33 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %34 = icmp ne %struct.imx_spdif_data* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %37 = icmp ne %struct.snd_soc_dai_link_component* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %22
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %174

41:                                               ; preds = %35
  %42 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %42, i64 0
  %44 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %45 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %43, %struct.snd_soc_dai_link_component** %46, align 8
  %47 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %47, i64 1
  %49 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %50 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 9
  store %struct.snd_soc_dai_link_component* %48, %struct.snd_soc_dai_link_component** %51, align 8
  %52 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %52, i64 2
  %54 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %55 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %53, %struct.snd_soc_dai_link_component** %56, align 8
  %57 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %58 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %61 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %64 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %67 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %70 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  %72 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %73 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 9
  %75 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %74, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %78 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 9
  %80 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %79, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %80, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct.device_node*, %struct.device_node** %3, align 8
  %83 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %84 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 8
  %86 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %85, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %86, i32 0, i32 2
  store %struct.device_node* %82, %struct.device_node** %87, align 8
  %88 = load %struct.device_node*, %struct.device_node** %3, align 8
  %89 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %90 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 7
  %92 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %91, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %92, i32 0, i32 2
  store %struct.device_node* %88, %struct.device_node** %93, align 8
  %94 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %95 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i32 1, i32* %96, align 8
  %97 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %98 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  store i32 1, i32* %99, align 4
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = call i64 @of_property_read_bool(%struct.device_node* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %41
  %104 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %105 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 6
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %41
  %108 = load %struct.device_node*, %struct.device_node** %4, align 8
  %109 = call i64 @of_property_read_bool(%struct.device_node* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %113 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %117 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %123 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %174

131:                                              ; preds = %121, %115
  %132 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %135 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %136, align 8
  %137 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %138 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %137, i32 0, i32 1
  %139 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %140 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %143 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @THIS_MODULE, align 4
  %146 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %147 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %150 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %149, i32 0, i32 0
  %151 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_8__* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %131
  br label %174

155:                                              ; preds = %131
  %156 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.imx_spdif_data*, %struct.imx_spdif_data** %5, align 8
  %159 = getelementptr inbounds %struct.imx_spdif_data, %struct.imx_spdif_data* %158, i32 0, i32 0
  %160 = call i32 @devm_snd_soc_register_card(%struct.TYPE_9__* %157, %struct.TYPE_8__* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @EPROBE_DEFER, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %163, %155
  br label %174

174:                                              ; preds = %173, %154, %127, %38, %16
  %175 = load %struct.device_node*, %struct.device_node** %3, align 8
  %176 = call i32 @of_node_put(%struct.device_node* %175)
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
