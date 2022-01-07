; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_device_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_device_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, i32, i32, i32, i32 }
%struct.sst_ipc_message = type { i32, %struct.sst_hsw_ipc_device_config_req*, i32 }
%struct.sst_hsw_ipc_device_config_req = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set device config\00", align 1
@SST_HSW_DEVICE_TDM_CLOCK_MASTER = common dso_local global i32 0, align 4
@IPC_GLB_SET_DEVICE_FORMATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error: set device formats failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_device_set_config(%struct.sst_hsw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sst_hsw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sst_ipc_message, align 8
  %12 = alloca %struct.sst_hsw_ipc_device_config_req, align 4
  %13 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %19 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %23 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %27 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %31 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SST_HSW_DEVICE_TDM_CLOCK_MASTER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 3
  store i32 4, i32* %36, align 4
  br label %39

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.sst_hsw_ipc_device_config_req, %struct.sst_hsw_ipc_device_config_req* %12, i32 0, i32 3
  store i32 2, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = call i32 @trace_hsw_device_config_req(%struct.sst_hsw_ipc_device_config_req* %12)
  %41 = load i32, i32* @IPC_GLB_SET_DEVICE_FORMATS, align 4
  %42 = call i32 @IPC_GLB_TYPE(i32 %41)
  %43 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 1
  store %struct.sst_hsw_ipc_device_config_req* %12, %struct.sst_hsw_ipc_device_config_req** %44, align 8
  %45 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  store i32 20, i32* %45, align 8
  %46 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %47 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %46, i32 0, i32 4
  %48 = call i32 @sst_ipc_tx_message_wait(i32* %47, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %11, i32* null)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %53 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @trace_hsw_device_config_req(%struct.sst_hsw_ipc_device_config_req*) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #1

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
