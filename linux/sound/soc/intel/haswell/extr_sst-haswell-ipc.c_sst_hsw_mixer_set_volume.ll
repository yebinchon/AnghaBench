; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_mixer_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_mixer_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }
%struct.sst_hsw_ipc_volume_req = type { i32, i32, i32, i32 }
%struct.sst_ipc_message = type { i32, i32, %struct.sst_hsw_ipc_volume_req* }

@.str = private unnamed_addr constant [17 x i8] c"set mixer volume\00", align 1
@SST_HSW_CHANNELS_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPC_GLB_STREAM_MESSAGE = common dso_local global i32 0, align 4
@IPC_STR_STAGE_MESSAGE = common dso_local global i32 0, align 4
@IPC_STR_ID_SHIFT = common dso_local global i32 0, align 4
@IPC_STG_SET_VOLUME = common dso_local global i32 0, align 4
@IPC_STG_TYPE_SHIFT = common dso_local global i32 0, align 4
@IPC_STG_ID_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error: set mixer volume failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_mixer_set_volume(%struct.sst_hsw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_hsw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sst_hsw_ipc_volume_req, align 4
  %11 = alloca %struct.sst_ipc_message, align 8
  %12 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %153

24:                                               ; preds = %17, %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %24
  %29 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %30 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %29, i32 0, i32 6
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %37 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %45 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %49 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %43, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %153

52:                                               ; preds = %35, %28
  %53 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %54 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %53, i32 0, i32 6
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %63 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %62, i32 0, i32 6
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %72 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %68
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74
  br label %96

76:                                               ; preds = %24
  %77 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %78 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %77, i32 0, i32 6
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %88 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  store i32 0, i32* %5, align 4
  br label %153

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %75
  %97 = load i32, i32* @IPC_GLB_STREAM_MESSAGE, align 4
  %98 = call i32 @IPC_GLB_TYPE(i32 %97)
  %99 = load i32, i32* @IPC_STR_STAGE_MESSAGE, align 4
  %100 = call i32 @IPC_STR_TYPE(i32 %99)
  %101 = or i32 %98, %100
  %102 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %104 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IPC_STR_ID_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @IPC_STG_SET_VOLUME, align 4
  %113 = load i32, i32* @IPC_STG_TYPE_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @IPC_STG_ID_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 8
  %124 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %125 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 3
  store i32 %126, i32* %127, align 4
  %128 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %129 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %9, align 4
  %133 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %10, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 2
  store %struct.sst_hsw_ipc_volume_req* %10, %struct.sst_hsw_ipc_volume_req** %134, align 8
  %135 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 1
  store i32 16, i32* %135, align 4
  %136 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %137 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %136, i32 0, i32 2
  %138 = bitcast %struct.sst_ipc_message* %11 to { i64, %struct.sst_hsw_ipc_volume_req* }*
  %139 = getelementptr inbounds { i64, %struct.sst_hsw_ipc_volume_req* }, { i64, %struct.sst_hsw_ipc_volume_req* }* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds { i64, %struct.sst_hsw_ipc_volume_req* }, { i64, %struct.sst_hsw_ipc_volume_req* }* %138, i32 0, i32 1
  %142 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %141, align 8
  %143 = call i32 @sst_ipc_tx_message_wait(i32* %137, i64 %140, %struct.sst_hsw_ipc_volume_req* %142, i32* null)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %96
  %147 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %148 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %5, align 4
  br label %153

152:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %146, %85, %42, %21
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @trace_ipc_request(i8*, i32) #1

declare dso_local i32 @IPC_GLB_TYPE(i32) #1

declare dso_local i32 @IPC_STR_TYPE(i32) #1

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, i64, %struct.sst_hsw_ipc_volume_req*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
