; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_acpi.c_sst_platform_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_acpi.c_sst_platform_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, %struct.TYPE_6__*, i32, i8*, i64, i32, %struct.TYPE_4__, i64, i8*, i64, i8*, i8*, i64, i64, i8*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.resource = type { i32, i64 }
%struct.platform_device = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid SHIM base from IFWI\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"LPE base: %#x size:%#x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IRAM base: %#x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to map IRAM\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"DRAM base: %#x\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"unable to map DRAM\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SHIM base: %#x\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unable to map SHIM\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Mailbox base: %#x\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"unable to map mailbox\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Invalid DDR base from IFWI\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DDR base: %#x\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"unable to map DDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*)* @sst_platform_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_get_resources(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %13 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 %18)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %371

29:                                               ; preds = %1
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = call i64 @resource_size(%struct.resource* %37)
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %45 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %43, %50
  %52 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %53 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %52, i32 0, i32 15
  store i64 %51, i64* %53, align 8
  %54 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %55 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %54, i32 0, i32 15
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %58 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %56, %63
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %67 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %66, i32 0, i32 16
  store i64 %65, i64* %67, align 8
  %68 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %69 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %72 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %71, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %77 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %80 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %79, i32 0, i32 15
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %83 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @devm_ioremap_nocache(i32 %78, i64 %81, i64 %88)
  %90 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %91 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %90, i32 0, i32 14
  store i8* %89, i8** %91, align 8
  %92 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %93 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %92, i32 0, i32 14
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %29
  %97 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %98 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %371

103:                                              ; preds = %29
  %104 = load %struct.resource*, %struct.resource** %4, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %108 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %106, %113
  %115 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %116 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %115, i32 0, i32 12
  store i64 %114, i64* %116, align 8
  %117 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %118 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %117, i32 0, i32 12
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %121 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %119, %126
  %128 = sub nsw i64 %127, 1
  %129 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %130 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %129, i32 0, i32 13
  store i64 %128, i64* %130, align 8
  %131 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %132 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %135 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %140 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %143 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %142, i32 0, i32 12
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %146 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = call i8* @devm_ioremap_nocache(i32 %141, i64 %144, i64 %151)
  %153 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %154 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %153, i32 0, i32 11
  store i8* %152, i8** %154, align 8
  %155 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %156 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %155, i32 0, i32 11
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %103
  %160 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %161 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_err(i32 %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %371

166:                                              ; preds = %103
  %167 = load %struct.resource*, %struct.resource** %4, align 8
  %168 = getelementptr inbounds %struct.resource, %struct.resource* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %171 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %169, %176
  %178 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %179 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %178, i32 0, i32 9
  store i64 %177, i64* %179, align 8
  %180 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %181 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %184 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  %188 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %189 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %192 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %195 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %194, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = call i8* @devm_ioremap_nocache(i32 %190, i64 %193, i64 %200)
  %202 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %203 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %202, i32 0, i32 10
  store i8* %201, i8** %203, align 8
  %204 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %205 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %204, i32 0, i32 10
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %166
  %209 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %210 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @dev_err(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %371

215:                                              ; preds = %166
  %216 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %217 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %224 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %223, i32 0, i32 9
  store i64 %222, i64* %224, align 8
  %225 = load %struct.resource*, %struct.resource** %4, align 8
  %226 = getelementptr inbounds %struct.resource, %struct.resource* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %229 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %227, %234
  %236 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %237 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %236, i32 0, i32 7
  store i64 %235, i64* %237, align 8
  %238 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %239 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %242 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %244)
  %246 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %247 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %250 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %253 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @devm_ioremap_nocache(i32 %248, i64 %251, i64 %258)
  %260 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %261 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %260, i32 0, i32 8
  store i8* %259, i8** %261, align 8
  %262 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %263 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %262, i32 0, i32 8
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %215
  %267 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %268 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @dev_err(i32 %269, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %271 = load i32, i32* @EIO, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %2, align 4
  br label %371

273:                                              ; preds = %215
  %274 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %275 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %279 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %278, i32 0, i32 7
  store i64 %277, i64* %279, align 8
  %280 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %281 = load i32, i32* @IORESOURCE_MEM, align 4
  %282 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %283 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %282, i32 0, i32 1
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call %struct.resource* @platform_get_resource(%struct.platform_device* %280, i32 %281, i32 %288)
  store %struct.resource* %289, %struct.resource** %4, align 8
  %290 = load %struct.resource*, %struct.resource** %4, align 8
  %291 = icmp ne %struct.resource* %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %273
  %293 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %294 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @dev_err(i32 %295, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %297 = load i32, i32* @EIO, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %2, align 4
  br label %371

299:                                              ; preds = %273
  %300 = load %struct.resource*, %struct.resource** %4, align 8
  %301 = getelementptr inbounds %struct.resource, %struct.resource* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %304 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %303, i32 0, i32 4
  store i64 %302, i64* %304, align 8
  %305 = load %struct.resource*, %struct.resource** %4, align 8
  %306 = getelementptr inbounds %struct.resource, %struct.resource* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %309 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %308, i32 0, i32 5
  store i32 %307, i32* %309, align 8
  %310 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %311 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %314 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %316)
  %318 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %319 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %322 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.resource*, %struct.resource** %4, align 8
  %325 = call i64 @resource_size(%struct.resource* %324)
  %326 = call i8* @devm_ioremap_nocache(i32 %320, i64 %323, i64 %325)
  %327 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %328 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  %329 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %330 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %329, i32 0, i32 3
  %331 = load i8*, i8** %330, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %340, label %333

333:                                              ; preds = %299
  %334 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %335 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dev_err(i32 %336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %338 = load i32, i32* @EIO, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %2, align 4
  br label %371

340:                                              ; preds = %299
  %341 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %342 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %343 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %342, i32 0, i32 1
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @platform_get_irq(%struct.platform_device* %341, i32 %348)
  %350 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %351 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %350, i32 0, i32 0
  store i32 %349, i32* %351, align 8
  %352 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %353 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp sle i32 %354, 0
  br i1 %355, label %356, label %370

356:                                              ; preds = %340
  %357 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %358 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %363 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  br label %368

365:                                              ; preds = %356
  %366 = load i32, i32* @EIO, align 4
  %367 = sub nsw i32 0, %366
  br label %368

368:                                              ; preds = %365, %361
  %369 = phi i32 [ %364, %361 ], [ %367, %365 ]
  store i32 %369, i32* %2, align 4
  br label %371

370:                                              ; preds = %340
  store i32 0, i32* %2, align 4
  br label %371

371:                                              ; preds = %370, %368, %333, %292, %266, %208, %159, %96, %22
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_ioremap_nocache(i32, i64, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
