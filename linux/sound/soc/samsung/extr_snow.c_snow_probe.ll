; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, %struct.device*, %struct.snd_soc_dai_link* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.snd_soc_dai_link = type { i32, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.platform_device = type { %struct.device }
%struct.snow_priv = type { i32, %struct.snd_soc_dai_link }

@snow_snd = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@links_cpus = common dso_local global i8* null, align 8
@links_codecs = common dso_local global i8* null, align 8
@links_platforms = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@snow_card_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed parsing cpu/sound-dai property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed parsing codec node\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"i2s_opclk0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"samsung,i2s-controller\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"i2s-controller property parse error\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"samsung,audio-codec\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"audio-codec property parse error\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"samsung,model\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snow_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snow_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca %struct.snow_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store %struct.snd_soc_card* @snow_snd, %struct.snd_soc_card** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snow_priv* @devm_kzalloc(%struct.device* %13, i32 88, i32 %14)
  store %struct.snow_priv* %15, %struct.snow_priv** %9, align 8
  %16 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %17 = icmp ne %struct.snow_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %230

21:                                               ; preds = %1
  %22 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %23 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %22, i32 0, i32 1
  store %struct.snd_soc_dai_link* %23, %struct.snd_soc_dai_link** %8, align 8
  %24 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @links_cpus, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  %40 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %40, i32 0, i32 3
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load i8*, i8** @links_cpus, align 8
  %43 = call i8* @ARRAY_SIZE(i8* %42)
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @links_codecs, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_4__*
  %48 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %48, i32 0, i32 5
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load i8*, i8** @links_codecs, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @links_platforms, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_5__*
  %56 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %56, i32 0, i32 4
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %57, align 8
  %58 = load i8*, i8** @links_platforms, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %63 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %63, i32 0, i32 2
  store %struct.snd_soc_dai_link* %62, %struct.snd_soc_dai_link** %64, align 8
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %69 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %68, i32 0, i32 1
  store %struct.device* %67, %struct.device** %69, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load %struct.device_node*, %struct.device_node** %71, align 8
  %73 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %73, %struct.device_node** %6, align 8
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %76, label %150

76:                                               ; preds = %21
  %77 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %77, i32 0, i32 6
  store i32* @snow_card_ops, i32** %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %6, align 8
  %80 = call i8* @of_parse_phandle(%struct.device_node* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %81 = bitcast i8* %80 to %struct.device_node*
  %82 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store %struct.device_node* %81, %struct.device_node** %85, align 8
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  %88 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.device_node*, %struct.device_node** %91, align 8
  %93 = icmp ne %struct.device_node* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %76
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %230

99:                                               ; preds = %76
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 0
  %102 = load %struct.device_node*, %struct.device_node** %101, align 8
  %103 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.device_node* %103, %struct.device_node** %7, align 8
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.device_node*, %struct.device_node** %7, align 8
  %106 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %107 = call i32 @snd_soc_of_get_dai_link_codecs(%struct.device* %104, %struct.device_node* %105, %struct.snd_soc_dai_link* %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.device_node*, %struct.device_node** %7, align 8
  %109 = call i32 @of_node_put(%struct.device_node* %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %99
  %113 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.device_node*, %struct.device_node** %116, align 8
  %118 = call i32 @of_node_put(%struct.device_node* %117)
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %230

122:                                              ; preds = %99
  %123 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.device_node*, %struct.device_node** %126, align 8
  %128 = call i32 @of_clk_get_by_name(%struct.device_node* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %130 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %132 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %122
  %137 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %138 = call i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link* %137)
  %139 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %140 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.device_node*, %struct.device_node** %142, align 8
  %144 = call i32 @of_node_put(%struct.device_node* %143)
  %145 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %146 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %2, align 4
  br label %230

149:                                              ; preds = %122
  br label %202

150:                                              ; preds = %21
  %151 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %152 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %151, i32 0, i32 5
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %154, align 8
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 0
  %157 = load %struct.device_node*, %struct.device_node** %156, align 8
  %158 = call i8* @of_parse_phandle(%struct.device_node* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %159 = bitcast i8* %158 to %struct.device_node*
  %160 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %161 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store %struct.device_node* %159, %struct.device_node** %163, align 8
  %164 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %165 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %164, i32 0, i32 3
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load %struct.device_node*, %struct.device_node** %167, align 8
  %169 = icmp ne %struct.device_node* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %150
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %230

175:                                              ; preds = %150
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = getelementptr inbounds %struct.device, %struct.device* %176, i32 0, i32 0
  %178 = load %struct.device_node*, %struct.device_node** %177, align 8
  %179 = call i8* @of_parse_phandle(%struct.device_node* %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %180 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %181 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %180, i32 0, i32 5
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i8* %179, i8** %183, align 8
  %184 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %185 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %184, i32 0, i32 5
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %201, label %190

190:                                              ; preds = %175
  %191 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %192 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %191, i32 0, i32 3
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.device_node*, %struct.device_node** %194, align 8
  %196 = call i32 @of_node_put(%struct.device_node* %195)
  %197 = load %struct.device*, %struct.device** %4, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %230

201:                                              ; preds = %175
  br label %202

202:                                              ; preds = %201, %149
  %203 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %204 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %203, i32 0, i32 3
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load %struct.device_node*, %struct.device_node** %206, align 8
  %208 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %209 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %208, i32 0, i32 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  store %struct.device_node* %207, %struct.device_node** %211, align 8
  %212 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %213 = call i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %214 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %215 = load %struct.snow_priv*, %struct.snow_priv** %9, align 8
  %216 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %214, %struct.snow_priv* %215)
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %219 = call i32 @devm_snd_soc_register_card(%struct.device* %217, %struct.snd_soc_card* %218)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %202
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = load i32, i32* %10, align 4
  %226 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %224, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %2, align 4
  br label %230

228:                                              ; preds = %202
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %228, %222, %190, %170, %136, %112, %94, %18
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.snow_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i8* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @snd_soc_of_get_dai_link_codecs(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*) #1

declare dso_local i32 @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.snow_priv*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
