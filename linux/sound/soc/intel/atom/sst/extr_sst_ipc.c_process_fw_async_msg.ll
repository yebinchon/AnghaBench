; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_process_fw_async_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_process_fw_async_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, %struct.stream_info* }
%struct.stream_info = type { i32, i32 (i32)*, i32, i32 (i32)*, i32, i32 (i32)*, i32 }
%struct.ipc_post = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipc_dsp_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Period elapsed rcvd for pipe id 0x%x\0A\00", align 1
@STREAM_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"FW sent async error msg:\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Buffer under-run for pipe:%#x str_id:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Unrecognized async msg from FW msg_id %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sst_drv*, %struct.ipc_post*)* @process_fw_async_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_fw_async_msg(%struct.intel_sst_drv* %0, %struct.ipc_post* %1) #0 {
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca %struct.ipc_post*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stream_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store %struct.ipc_post* %1, %struct.ipc_post** %4, align 8
  %13 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %14 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %19 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.ipc_dsp_hdr*
  %22 = getelementptr inbounds %struct.ipc_dsp_hdr, %struct.ipc_dsp_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %25 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %168 [
    i32 128, label %33
    i32 131, label %91
    i32 130, label %124
    i32 129, label %144
    i32 132, label %148
  ]

33:                                               ; preds = %2
  %34 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %35 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.ipc_dsp_hdr*
  %38 = getelementptr inbounds %struct.ipc_dsp_hdr, %struct.ipc_dsp_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @get_stream_id_mrfld(%struct.intel_sst_drv* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %33
  %46 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %47 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %52 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %51, i32 0, i32 1
  %53 = load %struct.stream_info*, %struct.stream_info** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %53, i64 %55
  store %struct.stream_info* %56, %struct.stream_info** %10, align 8
  %57 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %58 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @STREAM_INIT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %174

63:                                               ; preds = %45
  %64 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %65 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %64, i32 0, i32 5
  %66 = load i32 (i32)*, i32 (i32)** %65, align 8
  %67 = icmp ne i32 (i32)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %70 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %69, i32 0, i32 5
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %73 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %71(i32 %74)
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %78 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %77, i32 0, i32 3
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = icmp ne i32 (i32)* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %83 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %82, i32 0, i32 3
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %86 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %84(i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  br label %90

90:                                               ; preds = %89, %33
  br label %174

91:                                               ; preds = %2
  %92 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %93 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = bitcast i8* %94 to %struct.ipc_dsp_hdr*
  %96 = getelementptr inbounds %struct.ipc_dsp_hdr, %struct.ipc_dsp_hdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @get_stream_id_mrfld(%struct.intel_sst_drv* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %91
  %104 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %105 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %104, i32 0, i32 1
  %106 = load %struct.stream_info*, %struct.stream_info** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %106, i64 %108
  store %struct.stream_info* %109, %struct.stream_info** %10, align 8
  %110 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %111 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %110, i32 0, i32 1
  %112 = load i32 (i32)*, i32 (i32)** %111, align 8
  %113 = icmp ne i32 (i32)* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %116 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %115, i32 0, i32 1
  %117 = load i32 (i32)*, i32 (i32)** %116, align 8
  %118 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %119 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %117(i32 %120)
  br label %122

122:                                              ; preds = %114, %103
  br label %123

123:                                              ; preds = %122, %91
  br label %174

124:                                              ; preds = %2
  %125 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %126 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %140, %124
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sdiv i32 %131, 4
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load i32, i32* @KERN_DEBUG, align 4
  %136 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @print_hex_dump(i32 %135, i32* null, i32 %136, i32 16, i32 4, i8* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %129

143:                                              ; preds = %129
  br label %174

144:                                              ; preds = %2
  %145 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @process_fw_init(%struct.intel_sst_drv* %145, i8* %146)
  br label %174

148:                                              ; preds = %2
  %149 = load %struct.ipc_post*, %struct.ipc_post** %4, align 8
  %150 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = bitcast i8* %151 to %struct.ipc_dsp_hdr*
  %153 = getelementptr inbounds %struct.ipc_dsp_hdr, %struct.ipc_dsp_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %12, align 4
  %155 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @get_stream_id_mrfld(%struct.intel_sst_drv* %155, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %148
  %161 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %162 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %148
  br label %174

168:                                              ; preds = %2
  %169 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %170 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i32, i8*, ...) @dev_err(i32 %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %167, %144, %143, %123, %90, %62
  ret void
}

declare dso_local i32 @get_stream_id_mrfld(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i32*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @process_fw_init(%struct.intel_sst_drv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
