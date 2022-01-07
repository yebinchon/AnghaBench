; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_omap_hdmi_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_omap_hdmi_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.omap_hdmi_audio_pdata* }
%struct.omap_hdmi_audio_pdata = type { i32, i32, i32, i32 }
%struct.hdmi_audio_data = type { %struct.snd_soc_card*, i32, i32, %struct.TYPE_3__, i32 }
%struct.snd_soc_card = type { i32, %struct.device*, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, i64, i64 }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"audio_tx\00", align 1
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@omap4_hdmi_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@omap5_hdmi_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@omap_hdmi_component = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"HDMI %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_hdmi_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hdmi_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_hdmi_audio_pdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_audio_data*, align 8
  %7 = alloca %struct.snd_soc_dai_driver*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.snd_soc_dai_link_component*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %13, align 8
  store %struct.omap_hdmi_audio_pdata* %14, %struct.omap_hdmi_audio_pdata** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %4, align 8
  %18 = icmp ne %struct.omap_hdmi_audio_pdata* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %243

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %25, i32 40, i32 %26)
  %28 = bitcast i8* %27 to %struct.hdmi_audio_data*
  store %struct.hdmi_audio_data* %28, %struct.hdmi_audio_data** %6, align 8
  %29 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %30 = icmp ne %struct.hdmi_audio_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %243

34:                                               ; preds = %24
  %35 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %39 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %44 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %49 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %52 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %55 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %56 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %59 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %58, i32 0, i32 2
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.omap_hdmi_audio_pdata*, %struct.omap_hdmi_audio_pdata** %4, align 8
  %62 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %66 [
    i32 4, label %64
    i32 5, label %65
  ]

64:                                               ; preds = %34
  store %struct.snd_soc_dai_driver* @omap4_hdmi_dai, %struct.snd_soc_dai_driver** %7, align 8
  br label %69

65:                                               ; preds = %34
  store %struct.snd_soc_dai_driver* @omap5_hdmi_dai, %struct.snd_soc_dai_driver** %7, align 8
  br label %69

66:                                               ; preds = %34
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %243

69:                                               ; preds = %65, %64
  %70 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %71 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %7, align 8
  %74 = call i32 @devm_snd_soc_register_component(i32 %72, i32* @omap_hdmi_component, %struct.snd_soc_dai_driver* %73, i32 1)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %2, align 4
  br label %243

79:                                               ; preds = %69
  %80 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %81 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sdma_pcm_platform_register(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %2, align 4
  br label %243

88:                                               ; preds = %79
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @devm_kzalloc(%struct.device* %89, i32 40, i32 %90)
  %92 = bitcast i8* %91 to %struct.snd_soc_card*
  store %struct.snd_soc_card* %92, %struct.snd_soc_card** %8, align 8
  %93 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %94 = icmp ne %struct.snd_soc_card* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %243

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %102 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @dev_name(i32 %103)
  %105 = call i64 @devm_kasprintf(%struct.device* %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  %106 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %107 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %109 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %98
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %243

115:                                              ; preds = %98
  %116 = load i32, i32* @THIS_MODULE, align 4
  %117 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %118 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @devm_kzalloc(%struct.device* %119, i32 56, i32 %120)
  %122 = bitcast i8* %121 to %struct.TYPE_4__*
  %123 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %124 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %123, i32 0, i32 2
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %124, align 8
  %125 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %126 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = icmp ne %struct.TYPE_4__* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %115
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %243

132:                                              ; preds = %115
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i8* @devm_kzalloc(%struct.device* %133, i32 48, i32 %134)
  %136 = bitcast i8* %135 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %136, %struct.snd_soc_dai_link_component** %9, align 8
  %137 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %138 = icmp ne %struct.snd_soc_dai_link_component* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %243

142:                                              ; preds = %132
  %143 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %144 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %143, i64 0
  %145 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %146 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  store %struct.snd_soc_dai_link_component* %144, %struct.snd_soc_dai_link_component** %148, align 8
  %149 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %150 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %154 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %153, i64 1
  %155 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %156 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  store %struct.snd_soc_dai_link_component* %154, %struct.snd_soc_dai_link_component** %158, align 8
  %159 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %160 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %164 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %163, i64 2
  %165 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %166 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  store %struct.snd_soc_dai_link_component* %164, %struct.snd_soc_dai_link_component** %168, align 8
  %169 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %170 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %174 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %177 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 7
  store i64 %175, i64* %179, align 8
  %180 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %181 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %184 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 6
  store i64 %182, i64* %186, align 8
  %187 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %188 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @dev_name(i32 %189)
  %191 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %192 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 5
  %195 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %194, align 8
  %196 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %195, i32 0, i32 0
  store i8* %190, i8** %196, align 8
  %197 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %198 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @dev_name(i32 %199)
  %201 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %202 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %201, i32 0, i32 2
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  %205 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %204, align 8
  %206 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %205, i32 0, i32 1
  store i8* %200, i8** %206, align 8
  %207 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %208 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %207, i32 0, i32 2
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  %211 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %210, align 8
  %212 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %211, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %212, align 8
  %213 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %214 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %213, i32 0, i32 2
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %216, align 8
  %218 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %217, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %218, align 8
  %219 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %220 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load %struct.device*, %struct.device** %5, align 8
  %222 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %223 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %222, i32 0, i32 1
  store %struct.device* %221, %struct.device** %223, align 8
  %224 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %225 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %224)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %142
  %229 = load %struct.device*, %struct.device** %5, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %229, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %2, align 4
  br label %243

233:                                              ; preds = %142
  %234 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %235 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %236 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %235, i32 0, i32 0
  store %struct.snd_soc_card* %234, %struct.snd_soc_card** %236, align 8
  %237 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %238 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %239 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %237, %struct.hdmi_audio_data* %238)
  %240 = load %struct.device*, %struct.device** %5, align 8
  %241 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %6, align 8
  %242 = call i32 @dev_set_drvdata(%struct.device* %240, %struct.hdmi_audio_data* %241)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %233, %228, %139, %129, %112, %95, %86, %77, %66, %31, %19
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @sdma_pcm_platform_register(i32, i8*, i32*) #1

declare dso_local i64 @devm_kasprintf(%struct.device*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.hdmi_audio_data*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.hdmi_audio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
