; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-abe-twl6040.c_omap_abe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-abe-twl6040.c_omap_abe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.snd_soc_card = type { i32, i32, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.abe_twl6040 = type { %struct.TYPE_9__*, i32, i32, %struct.snd_soc_card }

@.str = private unnamed_addr constant [21 x i8] c"of node is missing.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@twl6040_dapm_widgets = common dso_local global i8* null, align 8
@audio_map = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ti,model\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Card name is not provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ti,audio-routing\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Error while parsing DAPM routing\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ti,mcpdm\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"McPDM node is not provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"TWL6040\00", align 1
@link0_cpus = common dso_local global %struct.TYPE_11__* null, align 8
@link0_platforms = common dso_local global %struct.TYPE_10__* null, align 8
@link0_codecs = common dso_local global i32 0, align 4
@omap_abe_twl6040_init = common dso_local global i32 0, align 4
@omap_abe_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"ti,dmic\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"DMIC Capture\00", align 1
@link1_cpus = common dso_local global %struct.TYPE_11__* null, align 8
@link1_platforms = common dso_local global %struct.TYPE_10__* null, align 8
@link1_codecs = common dso_local global i32 0, align 4
@omap_abe_dmic_init = common dso_local global i32 0, align 4
@omap_abe_dmic_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"ti,jack-detection\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ti,mclk-freq\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"MCLK frequency not provided\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"MCLK frequency missing\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"devm_snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_abe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_abe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.abe_twl6040*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %290

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.abe_twl6040* @devm_kzalloc(%struct.TYPE_12__* %24, i32 80, i32 %25)
  store %struct.abe_twl6040* %26, %struct.abe_twl6040** %7, align 8
  %27 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %28 = icmp eq %struct.abe_twl6040* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %290

32:                                               ; preds = %22
  %33 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %34 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %33, i32 0, i32 3
  store %struct.snd_soc_card* %34, %struct.snd_soc_card** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %38, align 8
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @twl6040_dapm_widgets, align 8
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @twl6040_dapm_widgets, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @audio_map, align 8
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @audio_map, align 8
  %53 = call i8* @ARRAY_SIZE(i8* %52)
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %57 = call i64 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %32
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %290

65:                                               ; preds = %32
  %66 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %67 = call i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %290

75:                                               ; preds = %65
  %76 = load %struct.device_node*, %struct.device_node** %4, align 8
  %77 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %77, %struct.device_node** %6, align 8
  %78 = load %struct.device_node*, %struct.device_node** %6, align 8
  %79 = icmp ne %struct.device_node* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %290

86:                                               ; preds = %75
  %87 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %88 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %91, align 8
  %92 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %93 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @link0_cpus, align 8
  %98 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %99 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 9
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %104 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.device_node*, %struct.device_node** %6, align 8
  %109 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %110 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 9
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store %struct.device_node* %108, %struct.device_node** %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @link0_platforms, align 8
  %117 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %118 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 8
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %121, align 8
  %122 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %123 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  %127 = load %struct.device_node*, %struct.device_node** %6, align 8
  %128 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %129 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store %struct.device_node* %127, %struct.device_node** %134, align 8
  %135 = load i32, i32* @link0_codecs, align 4
  %136 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %137 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 7
  store i32 %135, i32* %140, align 4
  %141 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %142 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @omap_abe_twl6040_init, align 4
  %147 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %148 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  store i32 %146, i32* %151, align 8
  %152 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %153 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 5
  store i32* @omap_abe_ops, i32** %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %4, align 8
  %158 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store %struct.device_node* %158, %struct.device_node** %6, align 8
  %159 = load %struct.device_node*, %struct.device_node** %6, align 8
  %160 = icmp ne %struct.device_node* %159, null
  br i1 %160, label %161, label %232

161:                                              ; preds = %86
  store i32 2, i32* %8, align 4
  %162 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %163 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %162, i32 0, i32 0
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %166, align 8
  %167 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %168 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** @link1_cpus, align 8
  %173 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %174 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 9
  store %struct.TYPE_11__* %172, %struct.TYPE_11__** %177, align 8
  %178 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %179 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %178, i32 0, i32 0
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  %183 = load %struct.device_node*, %struct.device_node** %6, align 8
  %184 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %185 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 9
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store %struct.device_node* %183, %struct.device_node** %190, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @link1_platforms, align 8
  %192 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %193 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 8
  store %struct.TYPE_10__* %191, %struct.TYPE_10__** %196, align 8
  %197 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %198 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  store i32 1, i32* %201, align 4
  %202 = load %struct.device_node*, %struct.device_node** %6, align 8
  %203 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %204 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  store %struct.device_node* %202, %struct.device_node** %209, align 8
  %210 = load i32, i32* @link1_codecs, align 4
  %211 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %212 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %211, i32 0, i32 0
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 7
  store i32 %210, i32* %215, align 4
  %216 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %217 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %216, i32 0, i32 0
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 4
  store i32 1, i32* %220, align 8
  %221 = load i32, i32* @omap_abe_dmic_init, align 4
  %222 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %223 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 6
  store i32 %221, i32* %226, align 8
  %227 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %228 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %227, i32 0, i32 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 5
  store i32* @omap_abe_dmic_ops, i32** %231, align 8
  br label %233

232:                                              ; preds = %86
  store i32 1, i32* %8, align 4
  br label %233

233:                                              ; preds = %232, %161
  %234 = load %struct.device_node*, %struct.device_node** %4, align 8
  %235 = call i32 @of_property_read_bool(%struct.device_node* %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %236 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %237 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.device_node*, %struct.device_node** %4, align 8
  %239 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %240 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %239, i32 0, i32 1
  %241 = call i32 @of_property_read_u32(%struct.device_node* %238, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %240)
  %242 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %243 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %233
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %2, align 4
  br label %290

252:                                              ; preds = %233
  %253 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %254 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %256 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %252
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %261, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %263 = load i32, i32* @ENODEV, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %2, align 4
  br label %290

265:                                              ; preds = %252
  %266 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %267 = getelementptr inbounds %struct.abe_twl6040, %struct.abe_twl6040* %266, i32 0, i32 0
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %270 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %269, i32 0, i32 2
  store %struct.TYPE_9__* %268, %struct.TYPE_9__** %270, align 8
  %271 = load i32, i32* %8, align 4
  %272 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %273 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %275 = load %struct.abe_twl6040*, %struct.abe_twl6040** %7, align 8
  %276 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %274, %struct.abe_twl6040* %275)
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %280 = call i32 @devm_snd_soc_register_card(%struct.TYPE_12__* %278, %struct.snd_soc_card* %279)
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %265
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %284, i32 0, i32 0
  %286 = load i32, i32* %9, align 4
  %287 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %285, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %283, %265
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %288, %259, %246, %80, %70, %59, %29, %16
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.abe_twl6040* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i64 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.snd_soc_card*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.abe_twl6040*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_12__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
