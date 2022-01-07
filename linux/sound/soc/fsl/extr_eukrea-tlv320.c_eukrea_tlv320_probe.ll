; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_eukrea-tlv320.c_eukrea_tlv320_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_eukrea-tlv320.c_eukrea_tlv320_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8*, %struct.device_node* }
%struct.TYPE_10__ = type { i8*, %struct.device_node* }
%struct.TYPE_9__ = type { i8*, %struct.device_node* }
%struct.platform_device = type { %struct.TYPE_14__ }

@eukrea_tlv320 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"eukrea,model\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"eukrea,model node missing or invalid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ssi-controller\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ssi-controller missing or invalid.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"codec-handle\00", align 1
@eukrea_tlv320_dai = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"codec-handle node missing or invalid.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"fsl,mux-int-port\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"fsl,mux-int-port node missing or invalid.\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"fsl,mux-ext-port\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"fsl,mux-ext-port node missing or invalid.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"imx-ssi.0\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"tlv320aic23-codec.0-001a\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"cpuimx-audio\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"fsl,imx21-audmux\00", align 1
@MX27_AUDMUX_HPCR1_SSI0 = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TCLKDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_RFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_RCLKDIR = common dso_local global i32 0, align 4
@MX27_AUDMUX_HPCR3_SSI_PINS_4 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"fsl,imx31-audmux\00", align 1
@IMX_AUDMUX_V2_PTCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TCLKDIR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"Missing or invalid audmux DT node.\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @eukrea_tlv320_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eukrea_tlv320_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  store %struct.device_node* null, %struct.device_node** %8, align 8
  store %struct.device_node* null, %struct.device_node** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @eukrea_tlv320, i32 0, i32 1), align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %82

18:                                               ; preds = %1
  %19 = call i32 @snd_soc_of_parse_card_name(%struct.TYPE_12__* @eukrea_tlv320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %176

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  %31 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %31, %struct.device_node** %8, align 8
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %176

40:                                               ; preds = %26
  %41 = load %struct.device_node*, %struct.device_node** %8, align 8
  %42 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %42, %struct.device_node** %9, align 8
  %43 = load %struct.device_node*, %struct.device_node** %9, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store %struct.device_node* %46, %struct.device_node** %48, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %176

62:                                               ; preds = %53
  %63 = load %struct.device_node*, %struct.device_node** %7, align 8
  %64 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %6)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %176

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.device_node*, %struct.device_node** %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 2), align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store %struct.device_node* %76, %struct.device_node** %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %8, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 1), align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store %struct.device_node* %79, %struct.device_node** %81, align 8
  br label %89

82:                                               ; preds = %1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 2), align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 1), align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @eukrea_tlv320_dai, i32 0, i32 0), align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8** %88, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @eukrea_tlv320, i32 0, i32 0), align 8
  br label %89

89:                                               ; preds = %82, %71
  %90 = call i64 (...) @machine_is_eukrea_cpuimx27()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = call i64 @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %97 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %98 = load i32, i32* @IMX_AUDMUX_V1_PCR_TFSDIR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IMX_AUDMUX_V1_PCR_TCLKDIR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @IMX_AUDMUX_V1_PCR_RFSDIR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IMX_AUDMUX_V1_PCR_RCLKDIR, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %107 = call i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32 %106)
  %108 = or i32 %105, %107
  %109 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %110 = call i32 @IMX_AUDMUX_V1_PCR_RFCSEL(i32 %109)
  %111 = or i32 %108, %110
  %112 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %113 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %112)
  %114 = or i32 %111, %113
  %115 = call i32 @imx_audmux_v1_configure_port(i32 %96, i32 %114)
  %116 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %117 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %118 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %119 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %118)
  %120 = or i32 %117, %119
  %121 = call i32 @imx_audmux_v1_configure_port(i32 %116, i32 %120)
  br label %174

122:                                              ; preds = %92
  %123 = call i64 (...) @machine_is_eukrea_cpuimx25sd()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = call i64 (...) @machine_is_eukrea_cpuimx35sd()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = call i64 (...) @machine_is_eukrea_cpuimx51sd()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = call i64 @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %131, %128, %125, %122
  %135 = load %struct.device_node*, %struct.device_node** %7, align 8
  %136 = icmp ne %struct.device_node* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = call i64 (...) @machine_is_eukrea_cpuimx25sd()
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 4, i32 3
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %145 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %147)
  %149 = or i32 %146, %148
  %150 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %152)
  %154 = or i32 %151, %153
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %155)
  %157 = call i32 @imx_audmux_v2_configure_port(i32 %143, i32 %154, i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %160)
  %162 = call i32 @imx_audmux_v2_configure_port(i32 %158, i32 %159, i32 %161)
  br label %173

163:                                              ; preds = %131
  %164 = load %struct.device_node*, %struct.device_node** %7, align 8
  %165 = icmp ne %struct.device_node* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %170 = load i32, i32* @ENODEV, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %188

172:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %188

173:                                              ; preds = %142
  br label %174

174:                                              ; preds = %173, %95
  %175 = call i32 @snd_soc_register_card(%struct.TYPE_12__* @eukrea_tlv320)
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %67, %58, %34, %22
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load i32, i32* %4, align 4
  %183 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %179, %176
  %185 = load %struct.device_node*, %struct.device_node** %8, align 8
  %186 = call i32 @of_node_put(%struct.device_node* %185)
  %187 = load i32, i32* %4, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %184, %172, %166
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @snd_soc_of_parse_card_name(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @machine_is_eukrea_cpuimx27(...) #1

declare dso_local i64 @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @imx_audmux_v1_configure_port(i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_RFCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32) #1

declare dso_local i64 @machine_is_eukrea_cpuimx25sd(...) #1

declare dso_local i64 @machine_is_eukrea_cpuimx35sd(...) #1

declare dso_local i64 @machine_is_eukrea_cpuimx51sd(...) #1

declare dso_local i32 @imx_audmux_v2_configure_port(i32, i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32) #1

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_12__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
