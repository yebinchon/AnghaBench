; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-sgtl5000.c_imx_sgtl5000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-sgtl5000.c_imx_sgtl5000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_client = type { i32 }
%struct.imx_sgtl5000_data = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8*, i32, i32*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, %struct.device_node* }

@.str = private unnamed_addr constant [13 x i8] c"mux-int-port\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mux-int-port missing or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mux-ext-port\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"mux-ext-port missing or invalid\0A\00", align 1
@IMX_AUDMUX_V2_PTCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TCLKDIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"audmux internal port setup failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"audmux external port setup failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ssi-controller\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"audio-codec\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"phandle missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to find SSI platform device\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"failed to find codec platform device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"sgtl5000\00", align 1
@imx_sgtl5000_dai_init = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"audio-routing\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@imx_sgtl5000_dapm_widgets = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_sgtl5000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sgtl5000_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.imx_sgtl5000_data*, align 8
  %10 = alloca %struct.snd_soc_dai_link_component*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  store %struct.imx_sgtl5000_data* null, %struct.imx_sgtl5000_data** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %2, align 4
  br label %324

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %2, align 4
  br label %324

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %54)
  %56 = call i32 @imx_audmux_v2_configure_port(i32 %42, i32 %53, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %37
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %2, align 4
  br label %324

64:                                               ; preds = %37
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %67)
  %69 = call i32 @imx_audmux_v2_configure_port(i32 %65, i32 %66, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %2, align 4
  br label %324

77:                                               ; preds = %64
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.device_node*, %struct.device_node** %80, align 8
  %82 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.device_node* %82, %struct.device_node** %5, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.device_node*, %struct.device_node** %85, align 8
  %87 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store %struct.device_node* %87, %struct.device_node** %6, align 8
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = icmp ne %struct.device_node* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.device_node*, %struct.device_node** %6, align 8
  %92 = icmp ne %struct.device_node* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %77
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  br label %304

99:                                               ; preds = %90
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %100)
  store %struct.platform_device* %101, %struct.platform_device** %7, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %103 = icmp ne %struct.platform_device* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_dbg(%struct.TYPE_14__* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i32, i32* @EPROBE_DEFER, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  br label %304

110:                                              ; preds = %99
  %111 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @put_device(%struct.TYPE_14__* %112)
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = call %struct.i2c_client* @of_find_i2c_device_by_node(%struct.device_node* %114)
  store %struct.i2c_client* %115, %struct.i2c_client** %8, align 8
  %116 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %117 = icmp ne %struct.i2c_client* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_dbg(%struct.TYPE_14__* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %122 = load i32, i32* @EPROBE_DEFER, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %13, align 4
  br label %304

124:                                              ; preds = %110
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @devm_kzalloc(%struct.TYPE_14__* %126, i32 128, i32 %127)
  %129 = bitcast i8* %128 to %struct.imx_sgtl5000_data*
  store %struct.imx_sgtl5000_data* %129, %struct.imx_sgtl5000_data** %9, align 8
  %130 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %131 = icmp ne %struct.imx_sgtl5000_data* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  br label %304

135:                                              ; preds = %124
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @devm_kzalloc(%struct.TYPE_14__* %137, i32 48, i32 %138)
  %140 = bitcast i8* %139 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %140, %struct.snd_soc_dai_link_component** %10, align 8
  %141 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %142 = icmp ne %struct.snd_soc_dai_link_component* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %13, align 4
  br label %304

146:                                              ; preds = %135
  %147 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = call i32 @clk_get(i32* %148, i32* null)
  %150 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %151 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %153 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %159 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %13, align 4
  br label %304

162:                                              ; preds = %146
  %163 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %164 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @clk_get_rate(i32 %165)
  %167 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %168 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %170 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %169, i64 0
  %171 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %172 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %170, %struct.snd_soc_dai_link_component** %173, align 8
  %174 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %174, i64 1
  %176 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %177 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 9
  store %struct.snd_soc_dai_link_component* %175, %struct.snd_soc_dai_link_component** %178, align 8
  %179 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %10, align 8
  %180 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %179, i64 2
  %181 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %182 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %180, %struct.snd_soc_dai_link_component** %183, align 8
  %184 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %185 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %188 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %191 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i32 1, i32* %192, align 8
  %193 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %194 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %197 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %198, align 8
  %199 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %200 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 9
  %202 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %201, align 8
  %203 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %202, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %203, align 8
  %204 = load %struct.device_node*, %struct.device_node** %6, align 8
  %205 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %206 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 9
  %208 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %207, align 8
  %209 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %208, i32 0, i32 1
  store %struct.device_node* %204, %struct.device_node** %209, align 8
  %210 = load %struct.device_node*, %struct.device_node** %5, align 8
  %211 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %212 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 8
  %214 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %213, align 8
  %215 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %214, i32 0, i32 1
  store %struct.device_node* %210, %struct.device_node** %215, align 8
  %216 = load %struct.device_node*, %struct.device_node** %5, align 8
  %217 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %218 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 7
  %220 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %219, align 8
  %221 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %220, i32 0, i32 1
  store %struct.device_node* %216, %struct.device_node** %221, align 8
  %222 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %223 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 6
  store i32* @imx_sgtl5000_dai_init, i32** %224, align 8
  %225 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %226 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %231 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 5
  store i32 %229, i32* %232, align 8
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %236 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 5
  store %struct.TYPE_14__* %234, %struct.TYPE_14__** %237, align 8
  %238 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %239 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %238, i32 0, i32 1
  %240 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_13__* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %162
  br label %304

244:                                              ; preds = %162
  %245 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %246 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %245, i32 0, i32 1
  %247 = call i32 @snd_soc_of_parse_audio_routing(%struct.TYPE_13__* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  br label %304

251:                                              ; preds = %244
  %252 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %253 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load i32, i32* @THIS_MODULE, align 4
  %256 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %257 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 4
  store i32 %255, i32* %258, align 8
  %259 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %260 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %259, i32 0, i32 2
  %261 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %262 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  store %struct.TYPE_12__* %260, %struct.TYPE_12__** %263, align 8
  %264 = load i32, i32* @imx_sgtl5000_dapm_widgets, align 4
  %265 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %266 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* @imx_sgtl5000_dapm_widgets, align 4
  %269 = call i32 @ARRAY_SIZE(i32 %268)
  %270 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %271 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %275 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %274, i32 0, i32 1
  %276 = call i32 @platform_set_drvdata(%struct.platform_device* %273, %struct.TYPE_13__* %275)
  %277 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %278 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %277, i32 0, i32 1
  %279 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %280 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_13__* %278, %struct.imx_sgtl5000_data* %279)
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %284 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %283, i32 0, i32 1
  %285 = call i32 @devm_snd_soc_register_card(%struct.TYPE_14__* %282, %struct.TYPE_13__* %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %251
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* @EPROBE_DEFER, align 4
  %291 = sub nsw i32 0, %290
  %292 = icmp ne i32 %289, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 0
  %296 = load i32, i32* %13, align 4
  %297 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %295, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %293, %288
  br label %304

299:                                              ; preds = %251
  %300 = load %struct.device_node*, %struct.device_node** %5, align 8
  %301 = call i32 @of_node_put(%struct.device_node* %300)
  %302 = load %struct.device_node*, %struct.device_node** %6, align 8
  %303 = call i32 @of_node_put(%struct.device_node* %302)
  store i32 0, i32* %2, align 4
  br label %324

304:                                              ; preds = %298, %250, %243, %157, %143, %132, %118, %104, %93
  %305 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %306 = icmp ne %struct.imx_sgtl5000_data* %305, null
  br i1 %306, label %307, label %318

307:                                              ; preds = %304
  %308 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %309 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i64 @IS_ERR(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %307
  %314 = load %struct.imx_sgtl5000_data*, %struct.imx_sgtl5000_data** %9, align 8
  %315 = getelementptr inbounds %struct.imx_sgtl5000_data, %struct.imx_sgtl5000_data* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @clk_put(i32 %316)
  br label %318

318:                                              ; preds = %313, %307, %304
  %319 = load %struct.device_node*, %struct.device_node** %5, align 8
  %320 = call i32 @of_node_put(%struct.device_node* %319)
  %321 = load %struct.device_node*, %struct.device_node** %6, align 8
  %322 = call i32 @of_node_put(%struct.device_node* %321)
  %323 = load i32, i32* %13, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %318, %299, %72, %59, %32, %22
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @imx_audmux_v2_configure_port(i32, i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @put_device(%struct.TYPE_14__*) #1

declare dso_local %struct.i2c_client* @of_find_i2c_device_by_node(%struct.device_node*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_13__*, %struct.imx_sgtl5000_data*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
