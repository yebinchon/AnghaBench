; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-acpi.c_sst_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_id = type { i64 }
%struct.sst_acpi_priv = type { i32, %struct.snd_soc_acpi_mach*, %struct.sst_acpi_desc*, %struct.sst_pdata }
%struct.snd_soc_acpi_mach = type { i32, i32, %struct.sst_pdata* }
%struct.sst_acpi_desc = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.sst_pdata = type { i64, i64, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, %struct.device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No matching ASoC machine driver found\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sst_acpi_fw_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sst_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_acpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sst_acpi_priv*, align 8
  %7 = alloca %struct.sst_pdata*, align 8
  %8 = alloca %struct.snd_soc_acpi_mach*, align 8
  %9 = alloca %struct.sst_acpi_desc*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sst_acpi_priv* @devm_kzalloc(%struct.device* %14, i32 112, i32 %15)
  store %struct.sst_acpi_priv* %16, %struct.sst_acpi_priv** %6, align 8
  %17 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %18 = icmp eq %struct.sst_acpi_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %225

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.acpi_device_id* @acpi_match_device(i32 %27, %struct.device* %28)
  store %struct.acpi_device_id* %29, %struct.acpi_device_id** %4, align 8
  %30 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %31 = icmp ne %struct.acpi_device_id* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %225

35:                                               ; preds = %22
  %36 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.sst_acpi_desc*
  store %struct.sst_acpi_desc* %39, %struct.sst_acpi_desc** %9, align 8
  %40 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %41 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(i32 %42)
  store %struct.snd_soc_acpi_mach* %43, %struct.snd_soc_acpi_mach** %8, align 8
  %44 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %45 = icmp eq %struct.snd_soc_acpi_mach* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %225

51:                                               ; preds = %35
  %52 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %53 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %52, i32 0, i32 3
  store %struct.sst_pdata* %53, %struct.sst_pdata** %7, align 8
  %54 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %55 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %58 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %57, i32 0, i32 12
  store i32 %56, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %61 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %60, i32 0, i32 11
  store %struct.device* %59, %struct.device** %61, align 8
  %62 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %63 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %64 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %63, i32 0, i32 2
  store %struct.sst_acpi_desc* %62, %struct.sst_acpi_desc** %64, align 8
  %65 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %66 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %67 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %66, i32 0, i32 1
  store %struct.snd_soc_acpi_mach* %65, %struct.snd_soc_acpi_mach** %67, align 8
  %68 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %69 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %72 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %74 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %51
  %78 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %79 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %82 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %84 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %87 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %89 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %92 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %77, %51
  %94 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %95 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %101 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @platform_get_irq(%struct.platform_device* %99, i64 %102)
  %104 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %105 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %93
  %107 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %108 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load i32, i32* @IORESOURCE_MEM, align 4
  %114 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %115 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call %struct.resource* @platform_get_resource(%struct.platform_device* %112, i32 %113, i64 %116)
  store %struct.resource* %117, %struct.resource** %10, align 8
  %118 = load %struct.resource*, %struct.resource** %10, align 8
  %119 = icmp ne %struct.resource* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %111
  %121 = load %struct.resource*, %struct.resource** %10, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %125 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  %126 = load %struct.resource*, %struct.resource** %10, align 8
  %127 = call i8* @resource_size(%struct.resource* %126)
  %128 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %129 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %120, %111
  br label %131

131:                                              ; preds = %130, %106
  %132 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %133 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = load i32, i32* @IORESOURCE_MEM, align 4
  %139 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %140 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call %struct.resource* @platform_get_resource(%struct.platform_device* %137, i32 %138, i64 %141)
  store %struct.resource* %142, %struct.resource** %10, align 8
  %143 = load %struct.resource*, %struct.resource** %10, align 8
  %144 = icmp ne %struct.resource* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %136
  %146 = load %struct.resource*, %struct.resource** %10, align 8
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %150 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.resource*, %struct.resource** %10, align 8
  %152 = call i8* @resource_size(%struct.resource* %151)
  %153 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %154 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %145, %136
  br label %156

156:                                              ; preds = %155, %131
  %157 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %158 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %156
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load i32, i32* @IORESOURCE_MEM, align 4
  %164 = load %struct.sst_acpi_desc*, %struct.sst_acpi_desc** %9, align 8
  %165 = getelementptr inbounds %struct.sst_acpi_desc, %struct.sst_acpi_desc* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.resource* @platform_get_resource(%struct.platform_device* %162, i32 %163, i64 %166)
  store %struct.resource* %167, %struct.resource** %10, align 8
  %168 = load %struct.resource*, %struct.resource** %10, align 8
  %169 = icmp ne %struct.resource* %168, null
  br i1 %169, label %170, label %180

170:                                              ; preds = %161
  %171 = load %struct.resource*, %struct.resource** %10, align 8
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %175 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 8
  %176 = load %struct.resource*, %struct.resource** %10, align 8
  %177 = call i8* @resource_size(%struct.resource* %176)
  %178 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %179 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %170, %161
  br label %181

181:                                              ; preds = %180, %156
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %184 = call i32 @platform_set_drvdata(%struct.platform_device* %182, %struct.sst_acpi_priv* %183)
  %185 = load %struct.sst_pdata*, %struct.sst_pdata** %7, align 8
  %186 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %187 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %186, i32 0, i32 2
  store %struct.sst_pdata* %185, %struct.sst_pdata** %187, align 8
  %188 = load %struct.device*, %struct.device** %5, align 8
  %189 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %190 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %193 = call i32 @platform_device_register_data(%struct.device* %188, i32 %191, i32 -1, %struct.snd_soc_acpi_mach* %192, i32 16)
  %194 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %195 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %197 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @IS_ERR(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %181
  %202 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %203 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @PTR_ERR(i32 %204)
  store i32 %205, i32* %2, align 4
  br label %225

206:                                              ; preds = %181
  %207 = load i32, i32* @THIS_MODULE, align 4
  %208 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %8, align 8
  %209 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.device*, %struct.device** %5, align 8
  %212 = load i32, i32* @GFP_KERNEL, align 4
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = load i32, i32* @sst_acpi_fw_cb, align 4
  %215 = call i32 @request_firmware_nowait(i32 %207, i32 1, i32 %210, %struct.device* %211, i32 %212, %struct.platform_device* %213, i32 %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %206
  %219 = load %struct.sst_acpi_priv*, %struct.sst_acpi_priv** %6, align 8
  %220 = getelementptr inbounds %struct.sst_acpi_priv, %struct.sst_acpi_priv* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @platform_device_unregister(i32 %221)
  br label %223

223:                                              ; preds = %218, %206
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %201, %46, %32, %19
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.sst_acpi_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local %struct.snd_soc_acpi_mach* @snd_soc_acpi_find_machine(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i64) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sst_acpi_priv*) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i32, i32, %struct.snd_soc_acpi_mach*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, %struct.device*, i32, %struct.platform_device*, i32) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
