; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_process_notification.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_process_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }

@SST_IPCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"processing -->\00", align 1
@IPC_FW_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error: message type %d header 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"error: unexpected type %d hdr 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_hsw*)* @hsw_process_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_process_notification(%struct.sst_hsw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  %8 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %9 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %8, i32 0, i32 2
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  store %struct.sst_dsp* %10, %struct.sst_dsp** %4, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %12 = load i32, i32* @SST_IPCD, align 4
  %13 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @msg_get_global_type(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %19 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IPC_FW_READY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @hsw_fw_ready(%struct.sst_hsw* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %22, %1
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %53 [
    i32 136, label %34
    i32 142, label %34
    i32 139, label %34
    i32 137, label %34
    i32 132, label %34
    i32 138, label %34
    i32 130, label %34
    i32 140, label %34
    i32 135, label %34
    i32 134, label %34
    i32 131, label %34
    i32 129, label %34
    i32 128, label %41
    i32 141, label %45
    i32 133, label %49
  ]

34:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  %35 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %36 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %60

41:                                               ; preds = %32
  %42 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @hsw_stream_message(%struct.sst_hsw* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %60

45:                                               ; preds = %32
  %46 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @hsw_log_message(%struct.sst_hsw* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %60

49:                                               ; preds = %32
  %50 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @hsw_module_message(%struct.sst_hsw* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %60

53:                                               ; preds = %32
  %54 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %55 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49, %45, %41, %34
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @msg_get_global_type(i32) #1

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @hsw_fw_ready(%struct.sst_hsw*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @hsw_stream_message(%struct.sst_hsw*, i32) #1

declare dso_local i32 @hsw_log_message(%struct.sst_hsw*, i32) #1

declare dso_local i32 @hsw_module_message(%struct.sst_hsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
