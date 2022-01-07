; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_module_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_module_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, %struct.sst_dsp*, %struct.device* }
%struct.sst_dsp = type { i32 }
%struct.device = type { i32 }
%struct.sst_ipc_message = type { i32, i32 }
%struct.sst_module = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"module %d not loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"module %d already disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"module %d not valid\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IPC_GLB_MODULE_OPERATION = common dso_local global i32 0, align 4
@IPC_MODULE_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"module disable failed - %d\0A\00", align 1
@SST_MODULE_STATE_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_module_disable(%struct.sst_hsw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_hsw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sst_ipc_message, align 4
  %10 = alloca %struct.sst_module*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.sst_ipc_message* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %15 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %11, align 8
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %18 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %17, i32 0, i32 1
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %18, align 8
  store %struct.sst_dsp* %19, %struct.sst_dsp** %12, align 8
  %20 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sst_hsw_is_module_loaded(%struct.sst_hsw* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  br label %76

28:                                               ; preds = %3
  %29 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sst_hsw_is_module_active(%struct.sst_hsw* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_info(%struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %4, align 4
  br label %76

37:                                               ; preds = %28
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %12, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp* %38, i32 %39)
  store %struct.sst_module* %40, %struct.sst_module** %10, align 8
  %41 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %42 = icmp eq %struct.sst_module* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %76

49:                                               ; preds = %37
  %50 = load i32, i32* @IPC_GLB_MODULE_OPERATION, align 4
  %51 = call i32 @IPC_GLB_TYPE(i32 %50)
  %52 = load i32, i32* @IPC_MODULE_DISABLE, align 4
  %53 = call i32 @IPC_MODULE_OPERATION(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @IPC_MODULE_ID(i32 %55)
  %57 = or i32 %54, %56
  %58 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %60 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %59, i32 0, i32 0
  %61 = bitcast %struct.sst_ipc_message* %9 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i32 @sst_ipc_tx_message_wait(i32* %60, i64 %62, i32* null)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.device*, %struct.device** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %49
  %71 = load i32, i32* @SST_MODULE_STATE_INITIALIZED, align 4
  %72 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %73 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %43, %33, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sst_hsw_is_module_loaded(%struct.sst_hsw*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #2

declare dso_local i32 @sst_hsw_is_module_active(%struct.sst_hsw*, i32) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #2

declare dso_local %struct.sst_module* @sst_module_get_from_id(%struct.sst_dsp*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @IPC_MODULE_OPERATION(i32) #2

declare dso_local i32 @IPC_MODULE_ID(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
