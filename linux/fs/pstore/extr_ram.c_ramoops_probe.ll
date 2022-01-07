; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_probe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramoops_context = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i64, %struct.TYPE_5__**, %struct.TYPE_5__**, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.ramoops_context* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.ramoops_platform_data* }
%struct.ramoops_platform_data = type { i64, i64, i64, i64, i64, i32, i32, i64, %struct.TYPE_4__, i32 }

@oops_cxt = common dso_local global %struct.ramoops_context zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"already initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NULL platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"The memory size and the record/console size must be non-zero\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dmesg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@RAMOOPS_FLAG_FTRACE_PER_CPU = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@PRZ_FLAG_NO_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"pmsg\00", align 1
@PSTORE_FLAGS_DMESG = common dso_local global i32 0, align 4
@PSTORE_FLAGS_CONSOLE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_FTRACE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_PMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"cannot allocate pstore crash dump buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"registering with pstore failed\0A\00", align 1
@mem_size = common dso_local global i64 0, align 8
@mem_address = common dso_local global i64 0, align 8
@record_size = common dso_local global i64 0, align 8
@dump_oops = common dso_local global i32 0, align 4
@ramoops_console_size = common dso_local global i64 0, align 8
@ramoops_pmsg_size = common dso_local global i64 0, align 8
@ramoops_ftrace_size = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"using 0x%lx@0x%llx, ecc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ramoops_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramoops_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ramoops_platform_data*, align 8
  %6 = alloca %struct.ramoops_platform_data, align 8
  %7 = alloca %struct.ramoops_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %14, align 8
  store %struct.ramoops_platform_data* %15, %struct.ramoops_platform_data** %5, align 8
  store %struct.ramoops_context* @oops_cxt, %struct.ramoops_context** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %19 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %454

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i64 @dev_of_node(%struct.device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %30 = icmp ne %struct.ramoops_platform_data* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  store %struct.ramoops_platform_data* %6, %struct.ramoops_platform_data** %5, align 8
  %32 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %33 = call i32 @memset(%struct.ramoops_platform_data* %32, i32 0, i32 64)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %36 = call i32 @ramoops_parse_dt(%struct.platform_device* %34, %struct.ramoops_platform_data* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %454

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %28, %24
  %42 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %43 = icmp ne %struct.ramoops_platform_data* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %454

46:                                               ; preds = %41
  %47 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51
  %57 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %63 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %46
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %454

73:                                               ; preds = %66, %61, %56, %51
  %74 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @is_power_of_2(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %86 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @rounddown_pow_of_two(i64 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %91 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %78, %73
  %93 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %94 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %99 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @is_power_of_2(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %105 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @rounddown_pow_of_two(i64 %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %103, %97, %92
  %112 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %113 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @is_power_of_2(i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %116
  %123 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %124 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i8* @rounddown_pow_of_two(i64 %125)
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %129 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %116, %111
  %131 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %132 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %137 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @is_power_of_2(i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %135
  %142 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %143 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @rounddown_pow_of_two(i64 %144)
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %148 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %141, %135, %130
  %150 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %151 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %154 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %156 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %159 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %158, i32 0, i32 12
  store i64 %157, i64* %159, align 8
  %160 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %161 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %164 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %163, i32 0, i32 16
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %166 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %169 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %171 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %174 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %176 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %179 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  %180 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %181 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %184 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  %185 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %186 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %189 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %188, i32 0, i32 15
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %191 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %194 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %196 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %195, i32 0, i32 11
  %197 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %198 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %197, i32 0, i32 8
  %199 = bitcast %struct.TYPE_4__* %196 to i8*
  %200 = bitcast %struct.TYPE_4__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 4, i1 false)
  %201 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %202 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %201, i32 0, i32 12
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %9, align 8
  %204 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %205 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %208 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = sub i64 %206, %209
  %211 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %212 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = sub i64 %210, %213
  %215 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %216 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = sub i64 %214, %217
  store i64 %218, i64* %8, align 8
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %221 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %222 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %221, i32 0, i32 13
  %223 = load i64, i64* %8, align 8
  %224 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %225 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %229 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %228, i32 0, i32 0
  %230 = call i32 @ramoops_init_przs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.device* %219, %struct.ramoops_context* %220, %struct.TYPE_5__*** %222, i64* %9, i64 %223, i32 %227, i32* %229, i32 0, i32 0)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %149
  br label %454

234:                                              ; preds = %149
  %235 = load %struct.device*, %struct.device** %4, align 8
  %236 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %237 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %238 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %237, i32 0, i32 8
  %239 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %240 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @ramoops_init_prz(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.device* %235, %struct.ramoops_context* %236, i32* %238, i64* %9, i64 %241, i32 0)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %234
  br label %451

246:                                              ; preds = %234
  %247 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %248 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @RAMOOPS_FLAG_FTRACE_PER_CPU, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = load i32, i32* @nr_cpu_ids, align 4
  br label %256

255:                                              ; preds = %246
  br label %256

256:                                              ; preds = %255, %253
  %257 = phi i32 [ %254, %253 ], [ 1, %255 ]
  %258 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %259 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  %260 = load %struct.device*, %struct.device** %4, align 8
  %261 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %262 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %263 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %262, i32 0, i32 14
  %264 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %265 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %268 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %267, i32 0, i32 7
  %269 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %270 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %271 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @RAMOOPS_FLAG_FTRACE_PER_CPU, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %256
  %277 = load i32, i32* @PRZ_FLAG_NO_LOCK, align 4
  br label %279

278:                                              ; preds = %256
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = call i32 @ramoops_init_przs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.device* %260, %struct.ramoops_context* %261, %struct.TYPE_5__*** %263, i64* %9, i64 %266, i32 -1, i32* %268, i32 %269, i32 %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %446

285:                                              ; preds = %279
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %288 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %289 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %288, i32 0, i32 9
  %290 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %291 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @ramoops_init_prz(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.device* %286, %struct.ramoops_context* %287, i32* %289, i64* %9, i64 %292, i32 0)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %285
  br label %445

297:                                              ; preds = %285
  %298 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %299 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %300 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %299, i32 0, i32 10
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 3
  store %struct.ramoops_context* %298, %struct.ramoops_context** %301, align 8
  %302 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %303 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %302, i32 0, i32 10
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  store i32 0, i32* %304, align 8
  %305 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %306 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %297
  %310 = load i32, i32* @PSTORE_FLAGS_DMESG, align 4
  %311 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %312 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %310
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %309, %297
  %317 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %318 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load i32, i32* @PSTORE_FLAGS_CONSOLE, align 4
  %323 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %324 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %323, i32 0, i32 10
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %321, %316
  %329 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %330 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %328
  %334 = load i32, i32* @PSTORE_FLAGS_FTRACE, align 4
  %335 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %336 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %335, i32 0, i32 10
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %334
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %333, %328
  %341 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %342 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %340
  %346 = load i32, i32* @PSTORE_FLAGS_PMSG, align 4
  %347 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %348 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %347, i32 0, i32 10
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %346
  store i32 %351, i32* %349, align 8
  br label %352

352:                                              ; preds = %345, %340
  %353 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %354 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %353, i32 0, i32 10
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @PSTORE_FLAGS_DMESG, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %390

360:                                              ; preds = %352
  %361 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %362 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %361, i32 0, i32 13
  %363 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %363, i64 0
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %369 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %368, i32 0, i32 10
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  store i64 %367, i64* %370, align 8
  %371 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %372 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %371, i32 0, i32 10
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i32, i32* @GFP_KERNEL, align 4
  %376 = call i32 @kzalloc(i64 %374, i32 %375)
  %377 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %378 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %377, i32 0, i32 10
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  store i32 %376, i32* %379, align 8
  %380 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %381 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %380, i32 0, i32 10
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %360
  %386 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %387 = load i32, i32* @ENOMEM, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %10, align 4
  br label %437

389:                                              ; preds = %360
  br label %390

390:                                              ; preds = %389, %352
  %391 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %392 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %391, i32 0, i32 10
  %393 = call i32 @pstore_register(%struct.TYPE_6__* %392)
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %10, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %390
  %397 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %431

398:                                              ; preds = %390
  %399 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %400 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* @mem_size, align 8
  %402 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %403 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %402, i32 0, i32 7
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* @mem_address, align 8
  %405 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %406 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* @record_size, align 8
  %408 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %409 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* @dump_oops, align 4
  %411 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %412 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* @ramoops_console_size, align 8
  %414 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %415 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %414, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* @ramoops_pmsg_size, align 8
  %417 = load %struct.ramoops_platform_data*, %struct.ramoops_platform_data** %5, align 8
  %418 = getelementptr inbounds %struct.ramoops_platform_data, %struct.ramoops_platform_data* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* @ramoops_ftrace_size, align 8
  %420 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %421 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %424 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %423, i32 0, i32 12
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %427 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %426, i32 0, i32 11
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %422, i64 %425, i32 %429)
  store i32 0, i32* %2, align 4
  br label %456

431:                                              ; preds = %396
  %432 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %433 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %432, i32 0, i32 10
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @kfree(i32 %435)
  br label %437

437:                                              ; preds = %431, %385
  %438 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %439 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %438, i32 0, i32 10
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  store i64 0, i64* %440, align 8
  %441 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %442 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %441, i32 0, i32 9
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @persistent_ram_free(i32 %443)
  br label %445

445:                                              ; preds = %437, %296
  br label %446

446:                                              ; preds = %445, %284
  %447 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %448 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @persistent_ram_free(i32 %449)
  br label %451

451:                                              ; preds = %446, %245
  %452 = load %struct.ramoops_context*, %struct.ramoops_context** %7, align 8
  %453 = call i32 @ramoops_free_przs(%struct.ramoops_context* %452)
  br label %454

454:                                              ; preds = %451, %233, %71, %44, %39, %22
  %455 = load i32, i32* %10, align 4
  store i32 %455, i32* %2, align 4
  br label %456

456:                                              ; preds = %454, %398
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local i32 @memset(%struct.ramoops_platform_data*, i32, i32) #1

declare dso_local i32 @ramoops_parse_dt(%struct.platform_device*, %struct.ramoops_platform_data*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i8* @rounddown_pow_of_two(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ramoops_init_przs(i8*, %struct.device*, %struct.ramoops_context*, %struct.TYPE_5__***, i64*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @ramoops_init_prz(i8*, %struct.device*, %struct.ramoops_context*, i32*, i64*, i64, i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @pstore_register(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_info(i8*, i64, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @persistent_ram_free(i32) #1

declare dso_local i32 @ramoops_free_przs(%struct.ramoops_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
