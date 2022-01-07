; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_handle_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_handle_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs35l35_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.monitor_cfg, %struct.classh_cfg }
%struct.monitor_cfg = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.classh_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"cirrus,boost-pdn-fet-on\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cirrus,boost-ctl-millivolt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cirrus,boost-peak-milliamp\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid Boost Peak Current %u mA\0A\00", align 1
@CS35L35_VALID_PDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cirrus,boost-ind-nanohenry\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Inductor not specified.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"cirrus,sp-drv-strength\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"cirrus,sp-drv-unused\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"cirrus,stereo-config\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"cirrus,audio-channel\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"cirrus,advisory-channel\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"cirrus,shared-boost\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"cirrus,external-boost\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"cirrus,amp-gain-zc\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"cirrus,classh-internal-algo\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"cirrus,classh-bst-overide\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"cirrus,classh-bst-max-limit\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"cirrus,classh-mem-depth\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cirrus,classh-release-rate\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"cirrus,classh-headroom\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"cirrus,classh-wk-fet-disable\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"cirrus,classh-wk-fet-delay\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"cirrus,classh-wk-fet-thld\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"cirrus,classh-vpch-auto\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"cirrus,classh-vpch-rate\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"cirrus,classh-vpch-man\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"cirrus,monitor-signal-format\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"cirrus,imon\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"cirrus,vmon\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"cirrus,vpmon\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"cirrus,vbstmon\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"cirrus,vpbrstat\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"cirrus,zerofill\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs35l35_platform_data*)* @cs35l35_handle_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_handle_of_data(%struct.i2c_client* %0, %struct.cs35l35_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.cs35l35_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.classh_cfg*, align 8
  %10 = alloca %struct.monitor_cfg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.cs35l35_platform_data* %1, %struct.cs35l35_platform_data** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  %20 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %20, i32 0, i32 13
  store %struct.classh_cfg* %21, %struct.classh_cfg** %9, align 8
  %22 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %22, i32 0, i32 12
  store %struct.monitor_cfg* %23, %struct.monitor_cfg** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i8** %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %452

31:                                               ; preds = %2
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call i8* @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %41, 2600
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp ugt i32 %44, 9000
  br i1 %45, label %46, label %53

46:                                               ; preds = %43, %40
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %452

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = sub i32 %54, 2600
  %56 = udiv i32 %55, 100
  %57 = add i32 %56, 1
  %58 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %31
  %61 = load %struct.device_node*, %struct.device_node** %6, align 8
  %62 = call i32 @of_property_read_u32(%struct.device_node* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = icmp ult i32 %66, 1680
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp ugt i32 %69, 4480
  br i1 %70, label %71, label %78

71:                                               ; preds = %68, %65
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %452

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %79, 1680
  %81 = udiv i32 %80, 110
  %82 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %85 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %60
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = call i32 @of_property_read_u32(%struct.device_node* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %94 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %452

101:                                              ; preds = %91
  %102 = load %struct.device_node*, %struct.device_node** %6, align 8
  %103 = call i32 @of_property_read_u32(%struct.device_node* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %11)
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.device_node*, %struct.device_node** %6, align 8
  %111 = call i32 @of_property_read_u32(%struct.device_node* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32* %11)
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %109
  %120 = load %struct.device_node*, %struct.device_node** %6, align 8
  %121 = call i8* @of_property_read_bool(%struct.device_node* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %122 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %123 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %122, i32 0, i32 10
  store i8* %121, i8** %123, align 8
  %124 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %125 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %124, i32 0, i32 10
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %151

128:                                              ; preds = %119
  %129 = load %struct.device_node*, %struct.device_node** %6, align 8
  %130 = call i32 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %11)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %136 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.device_node*, %struct.device_node** %6, align 8
  %139 = call i32 @of_property_read_u32(%struct.device_node* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32* %11)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %145 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.device_node*, %struct.device_node** %6, align 8
  %148 = call i8* @of_property_read_bool(%struct.device_node* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %149 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %150 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %149, i32 0, i32 9
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %146, %119
  %152 = load %struct.device_node*, %struct.device_node** %6, align 8
  %153 = call i8* @of_property_read_bool(%struct.device_node* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %154 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %155 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %154, i32 0, i32 8
  store i8* %153, i8** %155, align 8
  %156 = load %struct.device_node*, %struct.device_node** %6, align 8
  %157 = call i8* @of_property_read_bool(%struct.device_node* %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %158 = load %struct.cs35l35_platform_data*, %struct.cs35l35_platform_data** %5, align 8
  %159 = getelementptr inbounds %struct.cs35l35_platform_data, %struct.cs35l35_platform_data* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  %160 = load %struct.device_node*, %struct.device_node** %6, align 8
  %161 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  store %struct.device_node* %161, %struct.device_node** %7, align 8
  %162 = load %struct.device_node*, %struct.device_node** %7, align 8
  %163 = icmp ne %struct.device_node* %162, null
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %167 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %169 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %297

172:                                              ; preds = %151
  %173 = load %struct.device_node*, %struct.device_node** %6, align 8
  %174 = call i8* @of_property_read_bool(%struct.device_node* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %175 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %176 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %175, i32 0, i32 11
  store i8* %174, i8** %176, align 8
  %177 = load %struct.device_node*, %struct.device_node** %7, align 8
  %178 = call i32 @of_property_read_u32(%struct.device_node* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32* %11)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %172
  %182 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %183 = load i32, i32* %11, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %187 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %181, %172
  %189 = load %struct.device_node*, %struct.device_node** %7, align 8
  %190 = call i32 @of_property_read_u32(%struct.device_node* %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32* %11)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %195 = load i32, i32* %11, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %199 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %193, %188
  %201 = load %struct.device_node*, %struct.device_node** %7, align 8
  %202 = call i32 @of_property_read_u32(%struct.device_node* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32* %11)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %207 = load i32, i32* %11, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %211 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %205, %200
  %213 = load %struct.device_node*, %struct.device_node** %7, align 8
  %214 = call i32 @of_property_read_u32(%struct.device_node* %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32* %11)
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %220 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = load %struct.device_node*, %struct.device_node** %7, align 8
  %223 = call i32 @of_property_read_u32(%struct.device_node* %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32* %11)
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %15, align 4
  %225 = icmp sge i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %228 = load i32, i32* %11, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %232 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %226, %221
  %234 = load %struct.device_node*, %struct.device_node** %7, align 8
  %235 = call i32 @of_property_read_u32(%struct.device_node* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32* %11)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp sge i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %241 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %233
  %243 = load %struct.device_node*, %struct.device_node** %7, align 8
  %244 = call i32 @of_property_read_u32(%struct.device_node* %243, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32* %11)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp sge i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %249 = load i32, i32* %11, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %253 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %247, %242
  %255 = load %struct.device_node*, %struct.device_node** %7, align 8
  %256 = call i32 @of_property_read_u32(%struct.device_node* %255, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32* %11)
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %15, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %262 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %259, %254
  %264 = load %struct.device_node*, %struct.device_node** %7, align 8
  %265 = call i32 @of_property_read_u32(%struct.device_node* %264, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32* %11)
  store i32 %265, i32* %15, align 4
  %266 = load i32, i32* %15, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %270 = load i32, i32* %11, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %274 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %273, i32 0, i32 8
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %268, %263
  %276 = load %struct.device_node*, %struct.device_node** %7, align 8
  %277 = call i32 @of_property_read_u32(%struct.device_node* %276, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32* %11)
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %15, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load i32, i32* @CS35L35_VALID_PDATA, align 4
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %11, align 4
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %286 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %285, i32 0, i32 9
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %280, %275
  %288 = load %struct.device_node*, %struct.device_node** %7, align 8
  %289 = call i32 @of_property_read_u32(%struct.device_node* %288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32* %11)
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %15, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load i32, i32* %11, align 4
  %294 = load %struct.classh_cfg*, %struct.classh_cfg** %9, align 8
  %295 = getelementptr inbounds %struct.classh_cfg, %struct.classh_cfg* %294, i32 0, i32 10
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %292, %287
  br label %297

297:                                              ; preds = %296, %151
  %298 = load %struct.device_node*, %struct.device_node** %7, align 8
  %299 = call i32 @of_node_put(%struct.device_node* %298)
  %300 = load %struct.device_node*, %struct.device_node** %6, align 8
  %301 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %300, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  store %struct.device_node* %301, %struct.device_node** %8, align 8
  %302 = load %struct.device_node*, %struct.device_node** %8, align 8
  %303 = icmp ne %struct.device_node* %302, null
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i32 1, i32 0
  %306 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %307 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %309 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %449

312:                                              ; preds = %297
  %313 = load %struct.device_node*, %struct.device_node** %8, align 8
  %314 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %315 = load i32, i32* %13, align 4
  %316 = call i32 @of_property_read_u8_array(%struct.device_node* %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8** %314, i32 %315)
  store i32 %316, i32* %15, align 4
  %317 = load i32, i32* %15, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %338, label %319

319:                                              ; preds = %312
  %320 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %321 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %320, i32 0, i32 1
  store i32 1, i32* %321, align 4
  %322 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %323 = load i8*, i8** %322, align 16
  %324 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %325 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %324, i32 0, i32 25
  store i8* %323, i8** %325, align 8
  %326 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %329 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %328, i32 0, i32 24
  store i8* %327, i8** %329, align 8
  %330 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %331 = load i8*, i8** %330, align 16
  %332 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %333 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %332, i32 0, i32 23
  store i8* %331, i8** %333, align 8
  %334 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 3
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %337 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %336, i32 0, i32 22
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %319, %312
  %339 = load %struct.device_node*, %struct.device_node** %8, align 8
  %340 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %341 = load i32, i32* %14, align 4
  %342 = call i32 @of_property_read_u8_array(%struct.device_node* %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8** %340, i32 %341)
  store i32 %342, i32* %15, align 4
  %343 = load i32, i32* %15, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %360, label %345

345:                                              ; preds = %338
  %346 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %347 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %346, i32 0, i32 2
  store i32 1, i32* %347, align 8
  %348 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %349 = load i8*, i8** %348, align 16
  %350 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %351 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %350, i32 0, i32 21
  store i8* %349, i8** %351, align 8
  %352 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %355 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %354, i32 0, i32 20
  store i8* %353, i8** %355, align 8
  %356 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %357 = load i8*, i8** %356, align 16
  %358 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %359 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %358, i32 0, i32 19
  store i8* %357, i8** %359, align 8
  br label %360

360:                                              ; preds = %345, %338
  %361 = load %struct.device_node*, %struct.device_node** %8, align 8
  %362 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %363 = load i32, i32* %14, align 4
  %364 = call i32 @of_property_read_u8_array(%struct.device_node* %361, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %362, i32 %363)
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %15, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %382, label %367

367:                                              ; preds = %360
  %368 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %369 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %368, i32 0, i32 3
  store i32 1, i32* %369, align 4
  %370 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %371 = load i8*, i8** %370, align 16
  %372 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %373 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %372, i32 0, i32 18
  store i8* %371, i8** %373, align 8
  %374 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %377 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %376, i32 0, i32 17
  store i8* %375, i8** %377, align 8
  %378 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %379 = load i8*, i8** %378, align 16
  %380 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %381 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %380, i32 0, i32 16
  store i8* %379, i8** %381, align 8
  br label %382

382:                                              ; preds = %367, %360
  %383 = load %struct.device_node*, %struct.device_node** %8, align 8
  %384 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %385 = load i32, i32* %14, align 4
  %386 = call i32 @of_property_read_u8_array(%struct.device_node* %383, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8** %384, i32 %385)
  store i32 %386, i32* %15, align 4
  %387 = load i32, i32* %15, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %404, label %389

389:                                              ; preds = %382
  %390 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %391 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %390, i32 0, i32 4
  store i32 1, i32* %391, align 8
  %392 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %393 = load i8*, i8** %392, align 16
  %394 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %395 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %394, i32 0, i32 15
  store i8* %393, i8** %395, align 8
  %396 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %397 = load i8*, i8** %396, align 8
  %398 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %399 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %398, i32 0, i32 14
  store i8* %397, i8** %399, align 8
  %400 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %401 = load i8*, i8** %400, align 16
  %402 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %403 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %402, i32 0, i32 13
  store i8* %401, i8** %403, align 8
  br label %404

404:                                              ; preds = %389, %382
  %405 = load %struct.device_node*, %struct.device_node** %8, align 8
  %406 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %407 = load i32, i32* %14, align 4
  %408 = call i32 @of_property_read_u8_array(%struct.device_node* %405, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8** %406, i32 %407)
  store i32 %408, i32* %15, align 4
  %409 = load i32, i32* %15, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %426, label %411

411:                                              ; preds = %404
  %412 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %413 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %412, i32 0, i32 5
  store i32 1, i32* %413, align 4
  %414 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %415 = load i8*, i8** %414, align 16
  %416 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %417 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %416, i32 0, i32 12
  store i8* %415, i8** %417, align 8
  %418 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %419 = load i8*, i8** %418, align 8
  %420 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %421 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %420, i32 0, i32 11
  store i8* %419, i8** %421, align 8
  %422 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %423 = load i8*, i8** %422, align 16
  %424 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %425 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %424, i32 0, i32 10
  store i8* %423, i8** %425, align 8
  br label %426

426:                                              ; preds = %411, %404
  %427 = load %struct.device_node*, %struct.device_node** %8, align 8
  %428 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %429 = load i32, i32* %14, align 4
  %430 = call i32 @of_property_read_u8_array(%struct.device_node* %427, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %428, i32 %429)
  store i32 %430, i32* %15, align 4
  %431 = load i32, i32* %15, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %448, label %433

433:                                              ; preds = %426
  %434 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %435 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %434, i32 0, i32 6
  store i32 1, i32* %435, align 8
  %436 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %437 = load i8*, i8** %436, align 16
  %438 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %439 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %438, i32 0, i32 9
  store i8* %437, i8** %439, align 8
  %440 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %441 = load i8*, i8** %440, align 8
  %442 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %443 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %442, i32 0, i32 8
  store i8* %441, i8** %443, align 8
  %444 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  %445 = load i8*, i8** %444, align 16
  %446 = load %struct.monitor_cfg*, %struct.monitor_cfg** %10, align 8
  %447 = getelementptr inbounds %struct.monitor_cfg, %struct.monitor_cfg* %446, i32 0, i32 7
  store i8* %445, i8** %447, align 8
  br label %448

448:                                              ; preds = %433, %426
  br label %449

449:                                              ; preds = %448, %297
  %450 = load %struct.device_node*, %struct.device_node** %8, align 8
  %451 = call i32 @of_node_put(%struct.device_node* %450)
  store i32 0, i32* %3, align 4
  br label %452

452:                                              ; preds = %449, %95, %71, %46, %30
  %453 = load i32, i32* %3, align 4
  ret i32 %453
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
