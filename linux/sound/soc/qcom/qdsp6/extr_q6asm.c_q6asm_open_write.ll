; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_open_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_open_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32, i32 }
%struct.asm_stream_cmd_open_write_v3 = type { i32, i32, i32, i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_OPEN_WRITE_V3 = common dso_local global i32 0, align 4
@ASM_LEGACY_STREAM_SESSION = common dso_local global i32 0, align 4
@ASM_END_POINT_DEVICE_MATRIX = common dso_local global i32 0, align 4
@ASM_NULL_POPP_TOPOLOGY = common dso_local global i32 0, align 4
@ASM_MEDIA_FMT_MP3 = common dso_local global i32 0, align 4
@ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid format 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ASM_TUN_WRITE_IO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_open_write(%struct.audio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asm_stream_cmd_open_write_v3*, align 8
  %9 = alloca %struct.apr_pkt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @APR_HDR_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 20
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %95

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.apr_pkt*
  store %struct.apr_pkt* %27, %struct.apr_pkt** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @APR_HDR_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.asm_stream_cmd_open_write_v3*
  store %struct.asm_stream_cmd_open_write_v3* %32, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %33 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %34 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %35 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %34, i32 0, i32 0
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %38 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @q6asm_add_hdr(%struct.audio_client* %33, %struct.TYPE_2__* %35, i32 %36, i32 1, i32 %39)
  %41 = load i32, i32* @ASM_STREAM_CMD_OPEN_WRITE_V3, align 4
  %42 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %43 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %46 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @ASM_LEGACY_STREAM_SESSION, align 4
  %48 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %49 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @ASM_END_POINT_DEVICE_MATRIX, align 4
  %53 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %54 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %57 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ASM_NULL_POPP_TOPOLOGY, align 4
  %59 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %60 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %70 [
    i32 128, label %62
    i32 129, label %66
  ]

62:                                               ; preds = %25
  %63 = load i32, i32* @ASM_MEDIA_FMT_MP3, align 4
  %64 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %65 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %78

66:                                               ; preds = %25
  %67 = load i32, i32* @ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2, align 4
  %68 = load %struct.asm_stream_cmd_open_write_v3*, %struct.asm_stream_cmd_open_write_v3** %8, align 8
  %69 = getelementptr inbounds %struct.asm_stream_cmd_open_write_v3, %struct.asm_stream_cmd_open_write_v3* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %78

70:                                               ; preds = %25
  %71 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %72 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %91

78:                                               ; preds = %66, %62
  %79 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %80 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %81 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %79, %struct.apr_pkt* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %91

85:                                               ; preds = %78
  %86 = load i32, i32* @ASM_TUN_WRITE_IO_MODE, align 4
  %87 = load %struct.audio_client*, %struct.audio_client** %5, align 8
  %88 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %84, %70
  %92 = load %struct.apr_pkt*, %struct.apr_pkt** %9, align 8
  %93 = call i32 @kfree(%struct.apr_pkt* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
