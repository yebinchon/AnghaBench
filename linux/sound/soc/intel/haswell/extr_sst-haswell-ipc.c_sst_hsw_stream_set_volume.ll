; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32*, i32, i32, i64* }
%struct.sst_hsw_stream = type { %struct.sst_hsw_ipc_volume_req, %struct.TYPE_2__ }
%struct.sst_hsw_ipc_volume_req = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sst_ipc_message = type { i32, i32, %struct.sst_hsw_ipc_volume_req* }

@.str = private unnamed_addr constant [18 x i8] c"set stream volume\00", align 1
@SST_HSW_CHANNELS_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPC_GLB_STREAM_MESSAGE = common dso_local global i32 0, align 4
@IPC_STR_STAGE_MESSAGE = common dso_local global i32 0, align 4
@IPC_STR_ID_SHIFT = common dso_local global i32 0, align 4
@IPC_STG_SET_VOLUME = common dso_local global i32 0, align 4
@IPC_STG_TYPE_SHIFT = common dso_local global i32 0, align 4
@IPC_STG_ID_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: set stream volume failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_set_volume(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_hsw*, align 8
  %8 = alloca %struct.sst_hsw_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sst_hsw_ipc_volume_req*, align 8
  %13 = alloca %struct.sst_ipc_message, align 8
  %14 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %7, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %16 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_ipc_request(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %158

29:                                               ; preds = %22, %5
  %30 = load i32, i32* @IPC_GLB_STREAM_MESSAGE, align 4
  %31 = call i32 @IPC_GLB_TYPE(i32 %30)
  %32 = load i32, i32* @IPC_STR_STAGE_MESSAGE, align 4
  %33 = call i32 @IPC_STR_TYPE(i32 %32)
  %34 = or i32 %31, %33
  %35 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %37 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IPC_STR_ID_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @IPC_STG_SET_VOLUME, align 4
  %46 = load i32, i32* @IPC_STG_TYPE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @IPC_STG_ID_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %58 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %57, i32 0, i32 0
  store %struct.sst_hsw_ipc_volume_req* %58, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %61 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %29
  %66 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %67 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %74 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %82 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %86 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %80, i32* %88, align 4
  store i32 0, i32* %6, align 4
  br label %158

89:                                               ; preds = %72, %65
  %90 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %91 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %98 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %114

99:                                               ; preds = %89
  %100 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %101 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %108 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load i32, i32* @SST_HSW_CHANNELS_ALL, align 4
  %111 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %112 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114
  br label %137

116:                                              ; preds = %29
  %117 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %118 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %128 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  store i32 0, i32* %6, align 4
  br label %158

133:                                              ; preds = %116
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %136 = getelementptr inbounds %struct.sst_hsw_ipc_volume_req, %struct.sst_hsw_ipc_volume_req* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %115
  %138 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %12, align 8
  %139 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 2
  store %struct.sst_hsw_ipc_volume_req* %138, %struct.sst_hsw_ipc_volume_req** %139, align 8
  %140 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %13, i32 0, i32 1
  store i32 8, i32* %140, align 4
  %141 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %142 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %141, i32 0, i32 2
  %143 = bitcast %struct.sst_ipc_message* %13 to { i64, %struct.sst_hsw_ipc_volume_req* }*
  %144 = getelementptr inbounds { i64, %struct.sst_hsw_ipc_volume_req* }, { i64, %struct.sst_hsw_ipc_volume_req* }* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds { i64, %struct.sst_hsw_ipc_volume_req* }, { i64, %struct.sst_hsw_ipc_volume_req* }* %143, i32 0, i32 1
  %147 = load %struct.sst_hsw_ipc_volume_req*, %struct.sst_hsw_ipc_volume_req** %146, align 8
  %148 = call i32 @sst_ipc_tx_message_wait(i32* %142, i64 %145, %struct.sst_hsw_ipc_volume_req* %147, i32* null)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %137
  %152 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  %153 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %6, align 4
  br label %158

157:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %151, %125, %79, %26
  %159 = load i32, i32* %6, align 4
  ret i32 %159
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
