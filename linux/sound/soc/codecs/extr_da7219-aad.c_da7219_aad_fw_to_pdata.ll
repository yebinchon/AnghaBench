; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_fw_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_fw_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da7219_aad_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"da7219_aad\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dlg,micbias-pulse-lvl\00", align 1
@DA7219_AAD_MICBIAS_PULSE_LVL_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dlg,micbias-pulse-time\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"dlg,btn-cfg\00", align 1
@DA7219_AAD_BTN_CFG_10MS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"dlg,mic-det-thr\00", align 1
@DA7219_AAD_MIC_DET_THR_500_OHMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"dlg,jack-ins-deb\00", align 1
@DA7219_AAD_JACK_INS_DEB_20MS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"dlg,jack-det-rate\00", align 1
@DA7219_AAD_JACK_DET_RATE_256_512MS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"dlg,jack-rem-deb\00", align 1
@DA7219_AAD_JACK_REM_DEB_1MS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"dlg,a-d-btn-thr\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"dlg,d-b-btn-thr\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"dlg,b-c-btn-thr\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dlg,c-mic-btn-thr\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dlg,btn-avg\00", align 1
@DA7219_AAD_BTN_AVG_2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"dlg,adc-1bit-rpt\00", align 1
@DA7219_AAD_ADC_1BIT_RPT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da7219_aad_pdata* (%struct.snd_soc_component*)* @da7219_aad_fw_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da7219_aad_pdata* @da7219_aad_fw_to_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.da7219_aad_pdata*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.da7219_aad_pdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.fwnode_handle* @device_get_named_child_node(%struct.device* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.fwnode_handle* %16, %struct.fwnode_handle** %6, align 8
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %18 = icmp ne %struct.fwnode_handle* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.da7219_aad_pdata* null, %struct.da7219_aad_pdata** %2, align 8
  br label %206

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.da7219_aad_pdata* @devm_kzalloc(%struct.device* %21, i32 64, i32 %22)
  store %struct.da7219_aad_pdata* %23, %struct.da7219_aad_pdata** %7, align 8
  %24 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %25 = icmp ne %struct.da7219_aad_pdata* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store %struct.da7219_aad_pdata* null, %struct.da7219_aad_pdata** %2, align 8
  br label %206

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %32 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %34 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @da7219_aad_fw_micbias_pulse_lvl(%struct.snd_soc_component* %37, i64 %38)
  %40 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %41 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %27
  %43 = load i32, i32* @DA7219_AAD_MICBIAS_PULSE_LVL_OFF, align 4
  %44 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %45 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %48 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64* %9)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %53 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %52, i32 0, i32 11
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %56 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %9)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @da7219_aad_fw_btn_cfg(%struct.snd_soc_component* %59, i64 %60)
  %62 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %63 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @DA7219_AAD_BTN_CFG_10MS, align 4
  %66 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %67 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %70 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64* %9)
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @da7219_aad_fw_mic_det_thr(%struct.snd_soc_component* %73, i64 %74)
  %76 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %77 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @DA7219_AAD_MIC_DET_THR_500_OHMS, align 4
  %80 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %81 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %84 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64* %9)
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @da7219_aad_fw_jack_ins_deb(%struct.snd_soc_component* %87, i64 %88)
  %90 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %91 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  br label %96

92:                                               ; preds = %82
  %93 = load i32, i32* @DA7219_AAD_JACK_INS_DEB_20MS, align 4
  %94 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %95 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %98 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @da7219_aad_fw_jack_det_rate(%struct.snd_soc_component* %101, i8* %102)
  %104 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %105 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %96
  %107 = load i32, i32* @DA7219_AAD_JACK_DET_RATE_256_512MS, align 4
  %108 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %109 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %112 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64* %9)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @da7219_aad_fw_jack_rem_deb(%struct.snd_soc_component* %115, i64 %116)
  %118 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %119 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  br label %124

120:                                              ; preds = %110
  %121 = load i32, i32* @DA7219_AAD_JACK_REM_DEB_1MS, align 4
  %122 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %123 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %114
  %125 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %126 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64* %9)
  %127 = icmp sge i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i64, i64* %9, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %133 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %137

134:                                              ; preds = %124
  %135 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %136 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %135, i32 0, i32 0
  store i32 10, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %139 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64* %9)
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i64, i64* %9, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %146 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %150

147:                                              ; preds = %137
  %148 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %149 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %148, i32 0, i32 1
  store i32 22, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %152 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64* %9)
  %153 = icmp sge i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i64, i64* %9, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %159 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %163

160:                                              ; preds = %150
  %161 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %162 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %161, i32 0, i32 2
  store i32 33, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %154
  %164 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %165 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %164, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64* %9)
  %166 = icmp sge i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i64, i64* %9, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %172 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  br label %176

173:                                              ; preds = %163
  %174 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %175 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %174, i32 0, i32 3
  store i32 62, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %178 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64* %9)
  %179 = icmp sge i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @da7219_aad_fw_btn_avg(%struct.snd_soc_component* %181, i64 %182)
  %184 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %185 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  br label %190

186:                                              ; preds = %176
  %187 = load i32, i32* @DA7219_AAD_BTN_AVG_2, align 4
  %188 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %189 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %180
  %191 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %192 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64* %9)
  %193 = icmp sge i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %196 = load i64, i64* %9, align 8
  %197 = call i32 @da7219_aad_fw_adc_1bit_rpt(%struct.snd_soc_component* %195, i64 %196)
  %198 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %199 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  br label %204

200:                                              ; preds = %190
  %201 = load i32, i32* @DA7219_AAD_ADC_1BIT_RPT_1, align 4
  %202 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  %203 = getelementptr inbounds %struct.da7219_aad_pdata, %struct.da7219_aad_pdata* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %194
  %205 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %7, align 8
  store %struct.da7219_aad_pdata* %205, %struct.da7219_aad_pdata** %2, align 8
  br label %206

206:                                              ; preds = %204, %26, %19
  %207 = load %struct.da7219_aad_pdata*, %struct.da7219_aad_pdata** %2, align 8
  ret %struct.da7219_aad_pdata* %207
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.fwnode_handle* @device_get_named_child_node(%struct.device*, i8*) #1

declare dso_local %struct.da7219_aad_pdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

declare dso_local i32 @da7219_aad_fw_micbias_pulse_lvl(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @da7219_aad_fw_btn_cfg(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @da7219_aad_fw_mic_det_thr(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @da7219_aad_fw_jack_ins_deb(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i32 @da7219_aad_fw_jack_det_rate(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @da7219_aad_fw_jack_rem_deb(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @da7219_aad_fw_btn_avg(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @da7219_aad_fw_adc_1bit_rpt(%struct.snd_soc_component*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
