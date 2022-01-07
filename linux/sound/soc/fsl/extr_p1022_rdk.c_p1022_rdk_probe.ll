; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_p1022_rdk.c_p1022_rdk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_p1022_rdk.c_p1022_rdk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.device_node*, %struct.device* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.machine_data = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i8*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, i32*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, i32, %struct.device_node* }

@.str = private unnamed_addr constant [13 x i8] c"codec-handle\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not find codec node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@p1022_rdk_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"wm8960-hifi\00", align 1
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"codec bus-frequency property is missing or invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown clock frequency\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"fsl,playback-dma\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"missing/invalid playback DMA phandle (ret=%i)\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"fsl,capture-dma\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"missing/invalid capture DMA phandle (ret=%i)\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@p1022_rdk_machine_probe = common dso_local global i32 0, align 4
@p1022_rdk_machine_remove = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"could not register card (ret=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @p1022_rdk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p1022_rdk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.machine_data*, align 8
  %9 = alloca %struct.snd_soc_dai_link_component*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  store %struct.device_node* null, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %23, %struct.device_node** %7, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = bitcast %struct.device* %27 to %struct.TYPE_10__*
  %29 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %370

32:                                               ; preds = %1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.machine_data* @kzalloc(i32 96, i32 %33)
  store %struct.machine_data* %34, %struct.machine_data** %8, align 8
  %35 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %36 = icmp ne %struct.machine_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %366

40:                                               ; preds = %32
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.snd_soc_dai_link_component* @devm_kzalloc(%struct.TYPE_10__* %42, i32 144, i32 %43)
  store %struct.snd_soc_dai_link_component* %44, %struct.snd_soc_dai_link_component** %9, align 8
  %45 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %46 = icmp ne %struct.snd_soc_dai_link_component* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %366

50:                                               ; preds = %40
  %51 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %51, i64 0
  %53 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %54 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %52, %struct.snd_soc_dai_link_component** %57, align 8
  %58 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %58, i64 1
  %60 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %61 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 6
  store %struct.snd_soc_dai_link_component* %59, %struct.snd_soc_dai_link_component** %64, align 8
  %65 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %65, i64 2
  %67 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %68 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  store %struct.snd_soc_dai_link_component* %66, %struct.snd_soc_dai_link_component** %71, align 8
  %72 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %73 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %78 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %83 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %87, i64 3
  %89 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %90 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %88, %struct.snd_soc_dai_link_component** %93, align 8
  %94 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %94, i64 4
  %96 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %97 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  store %struct.snd_soc_dai_link_component* %95, %struct.snd_soc_dai_link_component** %100, align 8
  %101 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %101, i64 5
  %103 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %104 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  store %struct.snd_soc_dai_link_component* %102, %struct.snd_soc_dai_link_component** %107, align 8
  %108 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %109 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %114 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %119 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %118, i32 0, i32 2
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i8* @dev_name(%struct.TYPE_10__* %124)
  %126 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %127 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 8
  %131 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %130, align 8
  %132 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %131, i32 0, i32 0
  store i8* %125, i8** %132, align 8
  %133 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %134 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %133, i32 0, i32 2
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 7
  store i32* @p1022_rdk_ops, i32** %137, align 8
  %138 = load %struct.device_node*, %struct.device_node** %7, align 8
  %139 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %140 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %143, align 8
  %145 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %144, i32 0, i32 2
  store %struct.device_node* %138, %struct.device_node** %145, align 8
  %146 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %147 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %146, i32 0, i32 2
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 1
  %150 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %151 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 0
  %154 = call i32 @memcpy(%struct.TYPE_9__* %149, %struct.TYPE_9__* %153, i32 4)
  %155 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %156 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %159, align 8
  %161 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %160, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %161, align 8
  %162 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %163 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 6
  %167 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %166, align 8
  %168 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %171 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %170, i32 0, i32 2
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 6
  %175 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %174, align 8
  %176 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %175, i32 0, i32 0
  store i8* %169, i8** %176, align 8
  %177 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %178 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %183 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %185 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %186 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %188 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %189 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 4
  %190 = load %struct.device_node*, %struct.device_node** %7, align 8
  %191 = call i32* @of_get_property(%struct.device_node* %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %191, i32** %10, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %50
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %194, %50
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %200, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %11, align 4
  br label %363

204:                                              ; preds = %194
  %205 = load i32*, i32** %10, align 8
  %206 = call i32 @be32_to_cpup(i32* %205)
  %207 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %208 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 8
  %209 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %210 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %204
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %215, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %11, align 4
  br label %363

219:                                              ; preds = %204
  %220 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %221 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %226 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %225, i32 0, i32 2
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 5
  %230 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %229, align 8
  %231 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %230, i32 0, i32 1
  store i32 %224, i32* %231, align 8
  %232 = load %struct.device_node*, %struct.device_node** %6, align 8
  %233 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %234 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %233, i32 0, i32 2
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 0
  %237 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %238 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %242 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = call i32 @fsl_asoc_get_dma_channel(%struct.device_node* %232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %236, i32* %240, i32* %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %219
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = load i32, i32* %11, align 4
  %252 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %250, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %251)
  br label %363

253:                                              ; preds = %219
  %254 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %255 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %260 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %259, i32 0, i32 2
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i64 1
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 5
  %264 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %263, align 8
  %265 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %264, i32 0, i32 1
  store i32 %258, i32* %265, align 8
  %266 = load %struct.device_node*, %struct.device_node** %6, align 8
  %267 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %268 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %267, i32 0, i32 2
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i64 1
  %271 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %272 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %276 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = call i32 @fsl_asoc_get_dma_channel(%struct.device_node* %266, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* %270, i32* %274, i32* %278)
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %253
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load i32, i32* %11, align 4
  %286 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %284, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %285)
  br label %363

287:                                              ; preds = %253
  %288 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %289 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %288, i32 0, i32 2
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %292, align 8
  %293 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %294 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %293, i32 0, i32 2
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i64 1
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %297, align 8
  %298 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %299 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %298, i32 0, i32 2
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i64 0
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 3
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %305 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %304, i32 0, i32 2
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 4
  store i8* %303, i8** %308, align 8
  %309 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %310 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %309, i32 0, i32 2
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i64 1
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 3
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %316 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %315, i32 0, i32 2
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i64 1
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 4
  store i8* %314, i8** %319, align 8
  %320 = load i32, i32* @p1022_rdk_machine_probe, align 4
  %321 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %322 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 6
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* @p1022_rdk_machine_remove, align 4
  %325 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %326 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 5
  store i32 %324, i32* %327, align 8
  %328 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %329 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %332 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 4
  store i32 %330, i32* %333, align 4
  %334 = load i32, i32* @THIS_MODULE, align 4
  %335 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %336 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 8
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %338, i32 0, i32 0
  %340 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %341 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 2
  store %struct.TYPE_10__* %339, %struct.TYPE_10__** %342, align 8
  %343 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %344 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  store i32 2, i32* %345, align 8
  %346 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %347 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %346, i32 0, i32 2
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %350 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  store %struct.TYPE_9__* %348, %struct.TYPE_9__** %351, align 8
  %352 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %353 = getelementptr inbounds %struct.machine_data, %struct.machine_data* %352, i32 0, i32 1
  %354 = call i32 @snd_soc_register_card(%struct.TYPE_8__* %353)
  store i32 %354, i32* %11, align 4
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %287
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = load i32, i32* %11, align 4
  %361 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %360)
  br label %363

362:                                              ; preds = %287
  store i32 0, i32* %2, align 4
  br label %370

363:                                              ; preds = %357, %282, %248, %213, %198
  %364 = load %struct.machine_data*, %struct.machine_data** %8, align 8
  %365 = call i32 @kfree(%struct.machine_data* %364)
  br label %366

366:                                              ; preds = %363, %47, %37
  %367 = load %struct.device_node*, %struct.device_node** %7, align 8
  %368 = call i32 @of_node_put(%struct.device_node* %367)
  %369 = load i32, i32* %11, align 4
  store i32 %369, i32* %2, align 4
  br label %370

370:                                              ; preds = %366, %362, %26
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.machine_data* @kzalloc(i32, i32) #1

declare dso_local %struct.snd_soc_dai_link_component* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @fsl_asoc_get_dma_channel(%struct.device_node*, i8*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.machine_data*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
