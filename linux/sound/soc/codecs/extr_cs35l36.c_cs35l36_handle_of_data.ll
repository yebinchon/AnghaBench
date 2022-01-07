; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_handle_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_handle_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs35l36_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.cs35l36_vpbr_cfg }
%struct.cs35l36_vpbr_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"cirrus,boost-ctl-millivolt\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Unable to find required parameter 'cirrus,boost-ctl-millivolt'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cirrus,boost-ctl-select\00", align 1
@CS35L36_VALID_PDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cirrus,boost-peak-milliamp\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid Boost Peak Current %u mA\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Unable to find required parameter 'cirrus,boost-peak-milliamp'\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"cirrus,multi-amp-mode\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"cirrus,dcm-mode-enable\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cirrus,amp-pcm-inv\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cirrus,imon-pol-inv\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"cirrus,vmon-pol-inv\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"cirrus,temp-warn-threshold\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cirrus,boost-ind-nanohenry\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Inductor not specified.\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"cirrus,irq-drive-select\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"cirrus,irq-gpio-select\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"cirrus,vpbr-config\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"cirrus,vpbr-en\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"cirrus,vpbr-thld\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"cirrus,vpbr-atk-rate\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"cirrus,vpbr-atk-vol\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"cirrus,vpbr-max-attn\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"cirrus,vpbr-wait\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"cirrus,vpbr-rel-rate\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"cirrus,vpbr-mute-en\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs35l36_platform_data*)* @cs35l36_handle_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_handle_of_data(%struct.i2c_client* %0, %struct.cs35l36_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.cs35l36_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.cs35l36_vpbr_cfg*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.cs35l36_platform_data* %1, %struct.cs35l36_platform_data** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %15, i32 0, i32 12
  store %struct.cs35l36_vpbr_cfg* %16, %struct.cs35l36_vpbr_cfg** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %238

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %26, 2550
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 12000
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %238

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %39, 2550
  %41 = udiv i32 %40, 100
  %42 = add i32 %41, 1
  %43 = shl i32 %42, 1
  %44 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %52

46:                                               ; preds = %20
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %238

52:                                               ; preds = %38
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = call i32 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CS35L36_VALID_PDATA, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i32 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %69, 1600
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ugt i32 %72, 4500
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %68
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %238

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = sub i32 %82, 1600
  %84 = udiv i32 %83, 50
  %85 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %86 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %93

87:                                               ; preds = %63
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %238

93:                                               ; preds = %81
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = call i8* @of_property_read_bool(%struct.device_node* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %96, i32 0, i32 11
  store i8* %95, i8** %97, align 8
  %98 = load %struct.device_node*, %struct.device_node** %6, align 8
  %99 = call i8* @of_property_read_bool(%struct.device_node* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %100 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %100, i32 0, i32 10
  store i8* %99, i8** %101, align 8
  %102 = load %struct.device_node*, %struct.device_node** %6, align 8
  %103 = call i8* @of_property_read_bool(%struct.device_node* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %104 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %105 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load %struct.device_node*, %struct.device_node** %6, align 8
  %107 = call i8* @of_property_read_bool(%struct.device_node* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %108 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %109 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %108, i32 0, i32 8
  store i8* %107, i8** %109, align 8
  %110 = load %struct.device_node*, %struct.device_node** %6, align 8
  %111 = call i8* @of_property_read_bool(%struct.device_node* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %112 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %113 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = call i32 @of_property_read_u32(%struct.device_node* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %9)
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %93
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @CS35L36_VALID_PDATA, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %122 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %93
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = call i32 @of_property_read_u32(%struct.device_node* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32* %9)
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %130 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %137

131:                                              ; preds = %123
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %238

137:                                              ; preds = %127
  %138 = load %struct.device_node*, %struct.device_node** %6, align 8
  %139 = call i32 @of_property_read_u32(%struct.device_node* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32* %9)
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @CS35L36_VALID_PDATA, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %146 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %137
  %148 = load %struct.device_node*, %struct.device_node** %6, align 8
  %149 = call i32 @of_property_read_u32(%struct.device_node* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32* %9)
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @CS35L36_VALID_PDATA, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %5, align 8
  %156 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %147
  %158 = load %struct.device_node*, %struct.device_node** %6, align 8
  %159 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %158, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  store %struct.device_node* %159, %struct.device_node** %8, align 8
  %160 = load %struct.device_node*, %struct.device_node** %8, align 8
  %161 = icmp ne %struct.device_node* %160, null
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  %164 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %165 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %167 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %235

170:                                              ; preds = %157
  %171 = load %struct.device_node*, %struct.device_node** %8, align 8
  %172 = call i32 @of_property_read_u32(%struct.device_node* %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32* %9)
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %177 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %174, %170
  %179 = load %struct.device_node*, %struct.device_node** %8, align 8
  %180 = call i32 @of_property_read_u32(%struct.device_node* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32* %9)
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %185 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %178
  %187 = load %struct.device_node*, %struct.device_node** %8, align 8
  %188 = call i32 @of_property_read_u32(%struct.device_node* %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32* %9)
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %193 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.device_node*, %struct.device_node** %8, align 8
  %196 = call i32 @of_property_read_u32(%struct.device_node* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32* %9)
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %201 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %198, %194
  %203 = load %struct.device_node*, %struct.device_node** %8, align 8
  %204 = call i32 @of_property_read_u32(%struct.device_node* %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32* %9)
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %209 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %206, %202
  %211 = load %struct.device_node*, %struct.device_node** %8, align 8
  %212 = call i32 @of_property_read_u32(%struct.device_node* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32* %9)
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %217 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.device_node*, %struct.device_node** %8, align 8
  %220 = call i32 @of_property_read_u32(%struct.device_node* %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32* %9)
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %225 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = load %struct.device_node*, %struct.device_node** %8, align 8
  %228 = call i32 @of_property_read_u32(%struct.device_node* %227, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32* %9)
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %7, align 8
  %233 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %230, %226
  br label %235

235:                                              ; preds = %234, %157
  %236 = load %struct.device_node*, %struct.device_node** %8, align 8
  %237 = call i32 @of_node_put(%struct.device_node* %236)
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %131, %87, %74, %46, %31, %19
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
