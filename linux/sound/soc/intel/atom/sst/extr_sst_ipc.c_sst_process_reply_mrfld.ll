; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_sst_process_reply_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_sst_process_reply_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }
%struct.ipc_post = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.ipc_header_high }
%union.ipc_header_high = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.ipc_dsp_hdr = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"IPC process message header %x payload %x\0A\00", align 1
@SST_ASYNC_DRV_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"FW sent error response 0x%x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cmd_id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_process_reply_mrfld(%struct.intel_sst_drv* %0, %struct.ipc_post* %1) #0 {
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca %struct.ipc_post*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %union.ipc_header_high, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipc_dsp_hdr*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store %struct.ipc_post* %1, %struct.ipc_post** %4, align 8
  %10 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %11 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = bitcast %union.ipc_header_high* %7 to i8*
  %15 = bitcast %union.ipc_header_high* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %17 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %22 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %25 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = bitcast %union.ipc_header_high* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %31 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  %36 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SST_ASYNC_DRV_ID, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %44 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %45 = call i32 @process_fw_async_msg(%struct.intel_sst_drv* %43, %struct.ipc_post* %44)
  br label %132

46:                                               ; preds = %2
  %47 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %61 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %66 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @sst_wake_up_block(%struct.intel_sst_drv* %65, i64 %68, i32 %71, i32 %74, i8* null, i32 0)
  br label %132

76:                                               ; preds = %54, %51, %46
  %77 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %76
  %82 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %83 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kmemdup(i8* %85, i32 %86, i32 %87)
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  br label %132

92:                                               ; preds = %81
  %93 = load i8*, i8** %6, align 8
  %94 = bitcast i8* %93 to %struct.ipc_dsp_hdr*
  store %struct.ipc_dsp_hdr* %94, %struct.ipc_dsp_hdr** %9, align 8
  %95 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %96 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ipc_dsp_hdr*, %struct.ipc_dsp_hdr** %9, align 8
  %99 = getelementptr inbounds %struct.ipc_dsp_hdr, %struct.ipc_dsp_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %103 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @sst_wake_up_block(%struct.intel_sst_drv* %102, i64 %105, i32 %108, i32 %111, i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %92
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @kfree(i8* %117)
  br label %119

119:                                              ; preds = %116, %92
  br label %132

120:                                              ; preds = %76
  %121 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %122 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = bitcast %union.ipc_header_high* %7 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @sst_wake_up_block(%struct.intel_sst_drv* %121, i64 %124, i32 %127, i32 %130, i8* null, i32 0)
  br label %132

132:                                              ; preds = %42, %59, %91, %120, %119
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @process_fw_async_msg(%struct.intel_sst_drv*, %struct.ipc_post*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i64 @sst_wake_up_block(%struct.intel_sst_drv*, i64, i32, i32, i8*, i32) #2

declare dso_local i8* @kmemdup(i8*, i32, i32) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
