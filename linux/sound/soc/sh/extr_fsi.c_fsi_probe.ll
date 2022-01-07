; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, %struct.platform_device_id* }
%struct.TYPE_13__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device_id = type { i64 }
%struct.fsi_master = type { %struct.fsi_priv, %struct.fsi_priv, i64, i32, %struct.fsi_core* }
%struct.fsi_priv = type { %struct.fsi_master*, i64, i64 }
%struct.fsi_core = type { i32 }
%struct.sh_fsi_platform_info = type { i32, i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"fsia\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fsib\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown fsi device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Not enough FSI platform resources.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to ioremap FSI registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"FSIA stream probe failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"FSIB stream probe failed\0A\00", align 1
@fsi_interrupt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"irq request err\0A\00", align 1
@fsi_soc_component = common dso_local global i32 0, align 4
@fsi_soc_dai = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"cannot snd component register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsi_master*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sh_fsi_platform_info, align 4
  %7 = alloca %struct.fsi_core*, align 8
  %8 = alloca %struct.fsi_priv*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = call i32 @memset(%struct.sh_fsi_platform_info* %6, i32 0, i32 8)
  store %struct.fsi_core* null, %struct.fsi_core** %7, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.fsi_core* @of_device_get_match_data(%struct.TYPE_13__* %22)
  store %struct.fsi_core* %23, %struct.fsi_core** %7, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @fsi_of_parse(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.device_node* %24, i32* %25, %struct.TYPE_13__* %27)
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 0
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @fsi_of_parse(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %29, i32* %30, %struct.TYPE_13__* %32)
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = load %struct.platform_device_id*, %struct.platform_device_id** %36, align 8
  store %struct.platform_device_id* %37, %struct.platform_device_id** %12, align 8
  %38 = load %struct.platform_device_id*, %struct.platform_device_id** %12, align 8
  %39 = icmp ne %struct.platform_device_id* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.platform_device_id*, %struct.platform_device_id** %12, align 8
  %42 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.fsi_core*
  store %struct.fsi_core* %44, %struct.fsi_core** %7, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(%struct.sh_fsi_platform_info* %6, i32 %55, i32 8)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.fsi_core*, %struct.fsi_core** %7, align 8
  %60 = icmp ne %struct.fsi_core* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_13__* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %237

67:                                               ; preds = %58
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 0)
  store %struct.resource* %70, %struct.resource** %9, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = call i32 @platform_get_irq(%struct.platform_device* %71, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.resource*, %struct.resource** %9, align 8
  %74 = icmp ne %struct.resource* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75, %67
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(%struct.TYPE_13__* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %237

84:                                               ; preds = %75
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.fsi_master* @devm_kzalloc(%struct.TYPE_13__* %86, i32 72, i32 %87)
  store %struct.fsi_master* %88, %struct.fsi_master** %4, align 8
  %89 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %90 = icmp ne %struct.fsi_master* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %237

94:                                               ; preds = %84
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.resource*, %struct.resource** %9, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource*, %struct.resource** %9, align 8
  %101 = call i32 @resource_size(%struct.resource* %100)
  %102 = call i64 @devm_ioremap_nocache(%struct.TYPE_13__* %96, i64 %99, i32 %101)
  %103 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %104 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %106 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %94
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_err(%struct.TYPE_13__* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %237

115:                                              ; preds = %94
  %116 = load %struct.fsi_core*, %struct.fsi_core** %7, align 8
  %117 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %118 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %117, i32 0, i32 4
  store %struct.fsi_core* %116, %struct.fsi_core** %118, align 8
  %119 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %120 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %119, i32 0, i32 3
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %123 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %122, i32 0, i32 0
  store %struct.fsi_priv* %123, %struct.fsi_priv** %8, align 8
  %124 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %125 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %128 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.resource*, %struct.resource** %9, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %133 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %135 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %136 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %135, i32 0, i32 0
  store %struct.fsi_master* %134, %struct.fsi_master** %136, align 8
  %137 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %138 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 1
  %139 = call i32 @fsi_port_info_init(%struct.fsi_priv* %137, i32* %138)
  %140 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %141 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 1
  %142 = call i32 @fsi_handler_init(%struct.fsi_priv* %140, i32* %141)
  %143 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @fsi_stream_probe(%struct.fsi_priv* %143, %struct.TYPE_13__* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %115
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_err(%struct.TYPE_13__* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %2, align 4
  br label %237

154:                                              ; preds = %115
  %155 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %156 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %155, i32 0, i32 1
  store %struct.fsi_priv* %156, %struct.fsi_priv** %8, align 8
  %157 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %158 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 64
  %161 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %162 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.resource*, %struct.resource** %9, align 8
  %164 = getelementptr inbounds %struct.resource, %struct.resource* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 64
  %167 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %168 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %170 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %171 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %170, i32 0, i32 0
  store %struct.fsi_master* %169, %struct.fsi_master** %171, align 8
  %172 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %173 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 0
  %174 = call i32 @fsi_port_info_init(%struct.fsi_priv* %172, i32* %173)
  %175 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %176 = getelementptr inbounds %struct.sh_fsi_platform_info, %struct.sh_fsi_platform_info* %6, i32 0, i32 0
  %177 = call i32 @fsi_handler_init(%struct.fsi_priv* %175, i32* %176)
  %178 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @fsi_stream_probe(%struct.fsi_priv* %178, %struct.TYPE_13__* %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %154
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @dev_err(%struct.TYPE_13__* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %232

188:                                              ; preds = %154
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @pm_runtime_enable(%struct.TYPE_13__* %190)
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %195 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %193, %struct.fsi_master* %194)
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_name(%struct.TYPE_13__* %200)
  %202 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %203 = call i32 @devm_request_irq(%struct.TYPE_13__* %197, i32 %198, i32* @fsi_interrupt, i32 0, i32 %201, %struct.fsi_master* %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %188
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_err(%struct.TYPE_13__* %208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %225

210:                                              ; preds = %188
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = load i32, i32* @fsi_soc_dai, align 4
  %214 = load i32, i32* @fsi_soc_dai, align 4
  %215 = call i32 @ARRAY_SIZE(i32 %214)
  %216 = call i32 @devm_snd_soc_register_component(%struct.TYPE_13__* %212, i32* @fsi_soc_component, i32 %213, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %210
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_err(%struct.TYPE_13__* %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %225

223:                                              ; preds = %210
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %2, align 4
  br label %237

225:                                              ; preds = %219, %206
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @pm_runtime_disable(%struct.TYPE_13__* %227)
  %229 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %230 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %229, i32 0, i32 1
  %231 = call i32 @fsi_stream_remove(%struct.fsi_priv* %230)
  br label %232

232:                                              ; preds = %225, %184
  %233 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %234 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %233, i32 0, i32 0
  %235 = call i32 @fsi_stream_remove(%struct.fsi_priv* %234)
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %232, %223, %149, %109, %91, %78, %61
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @memset(%struct.sh_fsi_platform_info*, i32, i32) #1

declare dso_local %struct.fsi_core* @of_device_get_match_data(%struct.TYPE_13__*) #1

declare dso_local i32 @fsi_of_parse(i8*, %struct.device_node*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(%struct.sh_fsi_platform_info*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.fsi_master* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @devm_ioremap_nocache(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fsi_port_info_init(%struct.fsi_priv*, i32*) #1

declare dso_local i32 @fsi_handler_init(%struct.fsi_priv*, i32*) #1

declare dso_local i32 @fsi_stream_probe(%struct.fsi_priv*, %struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.fsi_master*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32*, i32, i32, %struct.fsi_master*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_13__*) #1

declare dso_local i32 @fsi_stream_remove(%struct.fsi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
