; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_module_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_module_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.sst_ipc_message = type { i32, i64, %struct.sst_hsw_transfer_parameter*, i32 }
%struct.sst_hsw_transfer_parameter = type { i64, i64, i32 }

@IPC_GLB_MODULE_OPERATION = common dso_local global i32 0, align 4
@IPC_MODULE_SET_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sst_hsw_module_set_param header=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"parameter size : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"payload size   : %d\0A\00", align 1
@SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"transfer parameter size : %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"transfer parameter aligned size : %zu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"transfer parameter size too large!\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ipc: module set parameter failed - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_module_set_param(%struct.sst_hsw* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_hsw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sst_ipc_message, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sst_hsw_transfer_parameter*, align 8
  %18 = alloca %struct.device*, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = bitcast %struct.sst_ipc_message* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  store i64 0, i64* %16, align 8
  %20 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  %21 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %18, align 8
  %23 = load i32, i32* @IPC_GLB_MODULE_OPERATION, align 4
  %24 = call i32 @IPC_GLB_TYPE(i32 %23)
  %25 = load i32, i32* @IPC_MODULE_SET_PARAMETER, align 4
  %26 = call i32 @IPC_MODULE_OPERATION(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @IPC_MODULE_ID(i64 %28)
  %30 = or i32 %27, %29
  %31 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.device*, %struct.device** %18, align 8
  %33 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 24
  %39 = sub i64 %38, 4
  store i64 %39, i64* %16, align 8
  %40 = load %struct.device*, %struct.device** %18, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.device*, %struct.device** %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %6
  %50 = load %struct.device*, %struct.device** %18, align 8
  %51 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = call i64 @ALIGN(i64 %54, i32 4)
  %56 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = load %struct.device*, %struct.device** %18, align 8
  %58 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sst_hsw_transfer_parameter* @kzalloc(i64 %62, i32 %63)
  store %struct.sst_hsw_transfer_parameter* %64, %struct.sst_hsw_transfer_parameter** %17, align 8
  %65 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %66 = icmp eq %struct.sst_hsw_transfer_parameter* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %102

70:                                               ; preds = %49
  %71 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %72 = getelementptr inbounds %struct.sst_hsw_transfer_parameter, %struct.sst_hsw_transfer_parameter* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @memcpy(i32 %73, i8* %74, i64 %75)
  br label %80

77:                                               ; preds = %6
  %78 = load %struct.device*, %struct.device** %18, align 8
  %79 = call i32 @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %102

80:                                               ; preds = %70
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %83 = getelementptr inbounds %struct.sst_hsw_transfer_parameter, %struct.sst_hsw_transfer_parameter* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %86 = getelementptr inbounds %struct.sst_hsw_transfer_parameter, %struct.sst_hsw_transfer_parameter* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %88 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %15, i32 0, i32 2
  store %struct.sst_hsw_transfer_parameter* %87, %struct.sst_hsw_transfer_parameter** %88, align 8
  %89 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  %90 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %89, i32 0, i32 0
  %91 = call i32 @sst_ipc_tx_message_wait(i32* %90, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %15, i32* null)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.device*, %struct.device** %18, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %80
  %99 = load %struct.sst_hsw_transfer_parameter*, %struct.sst_hsw_transfer_parameter** %17, align 8
  %100 = call i32 @kfree(%struct.sst_hsw_transfer_parameter* %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %77, %67
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @IPC_MODULE_OPERATION(i32) #2

declare dso_local i32 @IPC_MODULE_ID(i64) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #2

declare dso_local i64 @ALIGN(i64, i32) #2

declare dso_local %struct.sst_hsw_transfer_parameter* @kzalloc(i64, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i64) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @kfree(%struct.sst_hsw_transfer_parameter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
