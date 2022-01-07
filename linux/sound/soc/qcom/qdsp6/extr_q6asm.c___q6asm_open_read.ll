; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_open_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c___q6asm_open_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32 }
%struct.asm_stream_cmd_open_read_v3 = type { i32, i32, i32, i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_OPEN_READ_V3 = common dso_local global i32 0, align 4
@ASM_END_POINT_DEVICE_MATRIX = common dso_local global i32 0, align 4
@ASM_STREAM_POSTPROC_TOPO_ID_NONE = common dso_local global i32 0, align 4
@ASM_LEGACY_STREAM_SESSION = common dso_local global i32 0, align 4
@ASM_SHIFT_STREAM_PERF_MODE_FLAG_IN_OPEN_READ = common dso_local global i32 0, align 4
@ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid format[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_client*, i32, i32)* @__q6asm_open_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__q6asm_open_read(%struct.audio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asm_stream_cmd_open_read_v3*, align 8
  %9 = alloca %struct.apr_pkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @APR_HDR_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 20
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to %struct.apr_pkt*
  store %struct.apr_pkt* %27, %struct.apr_pkt** %9, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* @APR_HDR_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.asm_stream_cmd_open_read_v3*
  store %struct.asm_stream_cmd_open_read_v3* %32, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %33 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %34 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %35 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %34, i32 0, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %38 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @q6asm_add_hdr(%struct.audio_client* %33, %struct.TYPE_2__* %35, i32 %36, i32 1, i32 %39)
  %41 = load i32, i32* @ASM_STREAM_CMD_OPEN_READ_V3, align 4
  %42 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %43 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @ASM_END_POINT_DEVICE_MATRIX, align 4
  %46 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %47 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ASM_STREAM_POSTPROC_TOPO_ID_NONE, align 4
  %49 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %50 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %53 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %55 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @ASM_LEGACY_STREAM_SESSION, align 4
  %57 = load i32, i32* @ASM_SHIFT_STREAM_PERF_MODE_FLAG_IN_OPEN_READ, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %60 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %71 [
    i32 128, label %64
  ]

64:                                               ; preds = %25
  %65 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %66 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %66, align 4
  %68 = load i32, i32* @ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2, align 4
  %69 = load %struct.asm_stream_cmd_open_read_v3*, %struct.asm_stream_cmd_open_read_v3** %8, align 8
  %70 = getelementptr inbounds %struct.asm_stream_cmd_open_read_v3, %struct.asm_stream_cmd_open_read_v3* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %25
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %76 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %77 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %75, %struct.apr_pkt* %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %79 = call i32 @kfree(%struct.apr_pkt* %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
