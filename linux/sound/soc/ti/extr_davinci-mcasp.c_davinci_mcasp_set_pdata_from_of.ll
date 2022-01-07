; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_pdata_from_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_pdata_from_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp_pdata = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32* }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.davinci_mcasp_pdata*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.of_phandle_args = type { i32* }

@mcasp_dt_ids = common dso_local global i32 0, align 4
@DISMOD_LOW = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"op-mode\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tdm-slots\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"tdm-slots must be in rage [2-32]\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"serial-dir\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@DAVINCI_MCASP_DIT_MODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"tx-num-evt\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"rx-num-evt\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"sram-size-playback\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"sram-size-capture\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"dismod\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Invalid dismod value: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Error populating platform data, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.davinci_mcasp_pdata* (%struct.platform_device*)* @davinci_mcasp_set_pdata_from_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.davinci_mcasp_pdata* @davinci_mcasp_set_pdata_from_of(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.davinci_mcasp_pdata*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.davinci_mcasp_pdata*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  store %struct.davinci_mcasp_pdata* null, %struct.davinci_mcasp_pdata** %5, align 8
  %17 = load i32, i32* @mcasp_dt_ids, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.of_device_id* @of_match_device(i32 %17, %struct.TYPE_6__* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %23, align 8
  %25 = icmp ne %struct.davinci_mcasp_pdata* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %29, align 8
  store %struct.davinci_mcasp_pdata* %30, %struct.davinci_mcasp_pdata** %5, align 8
  %31 = load i8*, i8** @DISMOD_LOW, align 8
  %32 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %33 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  store %struct.davinci_mcasp_pdata* %34, %struct.davinci_mcasp_pdata** %2, align 8
  br label %261

35:                                               ; preds = %1
  %36 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %42 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.davinci_mcasp_pdata* @devm_kmemdup(%struct.TYPE_6__* %40, i32 %43, i32 56, i32 %44)
  store %struct.davinci_mcasp_pdata* %45, %struct.davinci_mcasp_pdata** %5, align 8
  %46 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %47 = icmp ne %struct.davinci_mcasp_pdata* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  store %struct.davinci_mcasp_pdata* %51, %struct.davinci_mcasp_pdata** %2, align 8
  br label %261

52:                                               ; preds = %38
  br label %56

53:                                               ; preds = %35
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %251

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i32 @of_property_read_u32(%struct.device_node* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %65 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call i32 @of_property_read_u32(%struct.device_node* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %75, 32
  br i1 %76, label %77, label %83

77:                                               ; preds = %74, %71
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %251

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %86 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %66
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = call i32* @of_get_property(%struct.device_node* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32* %89, i32** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %91, 4
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %135

96:                                               ; preds = %87
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @devm_kzalloc(%struct.TYPE_6__* %98, i32 %102, i32 %103)
  store i32* %104, i32** %12, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %251

110:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @be32_to_cpup(i32* %119)
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %131 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %134 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %133, i32 0, i32 10
  store i32* %132, i32** %134, align 8
  br label %135

135:                                              ; preds = %128, %87
  %136 = load %struct.device_node*, %struct.device_node** %4, align 8
  %137 = call i32 @of_property_match_string(%struct.device_node* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %251

141:                                              ; preds = %135
  %142 = load %struct.device_node*, %struct.device_node** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @of_parse_phandle_with_args(%struct.device_node* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %143, %struct.of_phandle_args* %7)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %251

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %154 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 4
  %155 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %156 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @DAVINCI_MCASP_DIT_MODE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %148
  %162 = load %struct.device_node*, %struct.device_node** %4, align 8
  %163 = call i32 @of_property_match_string(%struct.device_node* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %251

167:                                              ; preds = %161
  %168 = load %struct.device_node*, %struct.device_node** %4, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @of_parse_phandle_with_args(%struct.device_node* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %169, %struct.of_phandle_args* %7)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %251

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %180 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %174, %148
  %182 = load %struct.device_node*, %struct.device_node** %4, align 8
  %183 = call i32 @of_property_read_u32(%struct.device_node* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %189 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load %struct.device_node*, %struct.device_node** %4, align 8
  %192 = call i32 @of_property_read_u32(%struct.device_node* %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %9)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %198 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %195, %190
  %200 = load %struct.device_node*, %struct.device_node** %4, align 8
  %201 = call i32 @of_property_read_u32(%struct.device_node* %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %9)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %207 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %204, %199
  %209 = load %struct.device_node*, %struct.device_node** %4, align 8
  %210 = call i32 @of_property_read_u32(%struct.device_node* %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %9)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %216 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.device_node*, %struct.device_node** %4, align 8
  %219 = call i32 @of_property_read_u32(%struct.device_node* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %9)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %245

222:                                              ; preds = %217
  %223 = load i32, i32* %9, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %9, align 4
  %230 = icmp eq i32 %229, 3
  br i1 %230, label %231, label %236

231:                                              ; preds = %228, %225, %222
  %232 = load i32, i32* %9, align 4
  %233 = call i8* @DISMOD_VAL(i32 %232)
  %234 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %235 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %234, i32 0, i32 7
  store i8* %233, i8** %235, align 8
  br label %244

236:                                              ; preds = %228
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @dev_warn(%struct.TYPE_6__* %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %239)
  %241 = load i8*, i8** @DISMOD_LOW, align 8
  %242 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %243 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %242, i32 0, i32 7
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %236, %231
  br label %249

245:                                              ; preds = %217
  %246 = load i8*, i8** @DISMOD_LOW, align 8
  %247 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  %248 = getelementptr inbounds %struct.davinci_mcasp_pdata, %struct.davinci_mcasp_pdata* %247, i32 0, i32 7
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %245, %244
  %250 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  store %struct.davinci_mcasp_pdata* %250, %struct.davinci_mcasp_pdata** %2, align 8
  br label %261

251:                                              ; preds = %173, %166, %147, %140, %107, %77, %53
  %252 = load i32, i32* %11, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = load i32, i32* %11, align 4
  %258 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %257)
  store %struct.davinci_mcasp_pdata* null, %struct.davinci_mcasp_pdata** %5, align 8
  br label %259

259:                                              ; preds = %254, %251
  %260 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %5, align 8
  store %struct.davinci_mcasp_pdata* %260, %struct.davinci_mcasp_pdata** %2, align 8
  br label %261

261:                                              ; preds = %259, %249, %48, %26
  %262 = load %struct.davinci_mcasp_pdata*, %struct.davinci_mcasp_pdata** %2, align 8
  ret %struct.davinci_mcasp_pdata* %262
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.davinci_mcasp_pdata* @devm_kmemdup(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i8* @DISMOD_VAL(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
