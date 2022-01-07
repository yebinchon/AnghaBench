; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-es8328.c_imx_es8328_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-es8328.c_imx_es8328_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_es8328_data = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.device* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, %struct.device* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i32, i32*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component* }
%struct.snd_soc_dai_link_component = type { i8*, %struct.device_node* }

@.str = private unnamed_addr constant [13 x i8] c"mux-int-port\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mux-int-port missing or invalid\0A\00", align 1
@MUX_PORT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"mux-int-port: hardware only has %d mux ports\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mux-ext-port\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mux-ext-port missing or invalid\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"mux-ext-port: hardware only has %d mux ports\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TCLKDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"audmux internal port setup failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"audmux external port setup failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ssi-controller\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"audio-codec\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"phandle missing or invalid\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to find SSI platform device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"jack-gpio\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"hifi\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"es8328-hifi-analog\00", align 1
@imx_es8328_dai_init = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@imx_es8328_dapm_widgets = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Unable to parse card name\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"audio-routing\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Unable to parse routing: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"Unable to register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_es8328_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_es8328_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.imx_es8328_data*, align 8
  %9 = alloca %struct.snd_soc_dai_link_component*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %13, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %280

27:                                               ; preds = %1
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MUX_PORT_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27
  %35 = load %struct.device*, %struct.device** %13, align 8
  %36 = load i64, i64* @MUX_PORT_MAX, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %280

38:                                               ; preds = %31
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %13, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %280

46:                                               ; preds = %38
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @MUX_PORT_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %46
  %54 = load %struct.device*, %struct.device** %13, align 8
  %55 = load i64, i64* @MUX_PORT_MAX, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %280

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i64 %66)
  %68 = or i32 %65, %67
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i64 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %75 = or i32 %73, %74
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i64 %76)
  %78 = call i32 @imx_audmux_v2_configure_port(i64 %64, i32 %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load %struct.device*, %struct.device** %13, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %2, align 4
  br label %286

85:                                               ; preds = %59
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i64 %88)
  %90 = call i32 @imx_audmux_v2_configure_port(i64 %86, i32 %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %13, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %2, align 4
  br label %286

97:                                               ; preds = %85
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = load %struct.device_node*, %struct.device_node** %100, align 8
  %102 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.device_node* %102, %struct.device_node** %5, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.device, %struct.device* %104, i32 0, i32 0
  %106 = load %struct.device_node*, %struct.device_node** %105, align 8
  %107 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store %struct.device_node* %107, %struct.device_node** %6, align 8
  %108 = load %struct.device_node*, %struct.device_node** %5, align 8
  %109 = icmp ne %struct.device_node* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load %struct.device_node*, %struct.device_node** %6, align 8
  %112 = icmp ne %struct.device_node* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %110, %97
  %114 = load %struct.device*, %struct.device** %13, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %280

118:                                              ; preds = %110
  %119 = load %struct.device_node*, %struct.device_node** %5, align 8
  %120 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %119)
  store %struct.platform_device* %120, %struct.platform_device** %7, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %122 = icmp ne %struct.platform_device* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.device*, %struct.device** %13, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %280

128:                                              ; preds = %118
  %129 = load %struct.device*, %struct.device** %13, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @devm_kzalloc(%struct.device* %129, i32 128, i32 %130)
  %132 = bitcast i8* %131 to %struct.imx_es8328_data*
  store %struct.imx_es8328_data* %132, %struct.imx_es8328_data** %8, align 8
  %133 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %134 = icmp ne %struct.imx_es8328_data* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %12, align 4
  br label %280

138:                                              ; preds = %128
  %139 = load %struct.device*, %struct.device** %13, align 8
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @devm_kzalloc(%struct.device* %139, i32 48, i32 %140)
  %142 = bitcast i8* %141 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %142, %struct.snd_soc_dai_link_component** %9, align 8
  %143 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %144 = icmp ne %struct.snd_soc_dai_link_component* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %12, align 4
  br label %280

148:                                              ; preds = %138
  %149 = load %struct.device*, %struct.device** %13, align 8
  %150 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %151 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %150, i32 0, i32 3
  store %struct.device* %149, %struct.device** %151, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.device, %struct.device* %153, i32 0, i32 0
  %155 = load %struct.device_node*, %struct.device_node** %154, align 8
  %156 = call i32 @of_get_named_gpio(%struct.device_node* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %157 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %158 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %160 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %159, i64 0
  %161 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %162 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %160, %struct.snd_soc_dai_link_component** %163, align 8
  %164 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %165 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %164, i64 1
  %166 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %167 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 9
  store %struct.snd_soc_dai_link_component* %165, %struct.snd_soc_dai_link_component** %168, align 8
  %169 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %9, align 8
  %170 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %169, i64 2
  %171 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %172 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %170, %struct.snd_soc_dai_link_component** %173, align 8
  %174 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %175 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %178 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %181 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  %183 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %184 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %185, align 8
  %186 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %187 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %188, align 8
  %189 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %190 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 9
  %192 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %191, align 8
  %193 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %192, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %193, align 8
  %194 = load %struct.device_node*, %struct.device_node** %6, align 8
  %195 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %196 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 9
  %198 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %197, align 8
  %199 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %198, i32 0, i32 1
  store %struct.device_node* %194, %struct.device_node** %199, align 8
  %200 = load %struct.device_node*, %struct.device_node** %5, align 8
  %201 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %202 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 8
  %204 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %203, align 8
  %205 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %204, i32 0, i32 1
  store %struct.device_node* %200, %struct.device_node** %205, align 8
  %206 = load %struct.device_node*, %struct.device_node** %5, align 8
  %207 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %208 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 7
  %210 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %209, align 8
  %211 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %210, i32 0, i32 1
  store %struct.device_node* %206, %struct.device_node** %211, align 8
  %212 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %213 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 6
  store i32* @imx_es8328_dai_init, i32** %214, align 8
  %215 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %216 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %221 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 5
  store i32 %219, i32* %222, align 8
  %223 = load %struct.device*, %struct.device** %13, align 8
  %224 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %225 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 5
  store %struct.device* %223, %struct.device** %226, align 8
  %227 = load i32, i32* @imx_es8328_dapm_widgets, align 4
  %228 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %229 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 4
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* @imx_es8328_dapm_widgets, align 4
  %232 = call i32 @ARRAY_SIZE(i32 %231)
  %233 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %234 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  store i32 %232, i32* %235, align 4
  %236 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %237 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %236, i32 0, i32 0
  %238 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_6__* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %148
  %242 = load %struct.device*, %struct.device** %13, align 8
  %243 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %280

244:                                              ; preds = %148
  %245 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %246 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %245, i32 0, i32 0
  %247 = call i32 @snd_soc_of_parse_audio_routing(%struct.TYPE_6__* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i32 %247, i32* %12, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load %struct.device*, %struct.device** %13, align 8
  %252 = load i32, i32* %12, align 4
  %253 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %252)
  br label %280

254:                                              ; preds = %244
  %255 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %256 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i32 1, i32* %257, align 8
  %258 = load i32, i32* @THIS_MODULE, align 4
  %259 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %260 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  store i32 %258, i32* %261, align 8
  %262 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %263 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %262, i32 0, i32 1
  %264 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %265 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  store %struct.TYPE_5__* %263, %struct.TYPE_5__** %266, align 8
  %267 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %268 = getelementptr inbounds %struct.imx_es8328_data, %struct.imx_es8328_data* %267, i32 0, i32 0
  %269 = call i32 @snd_soc_register_card(%struct.TYPE_6__* %268)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %254
  %273 = load %struct.device*, %struct.device** %13, align 8
  %274 = load i32, i32* %12, align 4
  %275 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %273, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %274)
  br label %280

276:                                              ; preds = %254
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = load %struct.imx_es8328_data*, %struct.imx_es8328_data** %8, align 8
  %279 = call i32 @platform_set_drvdata(%struct.platform_device* %277, %struct.imx_es8328_data* %278)
  br label %280

280:                                              ; preds = %276, %272, %250, %241, %145, %135, %123, %113, %53, %43, %34, %24
  %281 = load %struct.device_node*, %struct.device_node** %5, align 8
  %282 = call i32 @of_node_put(%struct.device_node* %281)
  %283 = load %struct.device_node*, %struct.device_node** %6, align 8
  %284 = call i32 @of_node_put(%struct.device_node* %283)
  %285 = load i32, i32* %12, align 4
  store i32 %285, i32* %2, align 4
  br label %286

286:                                              ; preds = %280, %93, %81
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @imx_audmux_v2_configure_port(i64, i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i64) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i64) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i64) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @snd_soc_of_parse_audio_routing(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_es8328_data*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
