; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_media_format_block_multi_ch_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_media_format_block_multi_ch_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32, i32 }
%struct.asm_multi_channel_pcm_fmt_blk_v2 = type { i32, i32*, i8*, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.apr_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PCM_MAX_NUM_CHANNEL = common dso_local global i32 0, align 4
@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c" map channels failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_media_format_block_multi_ch_pcm(%struct.audio_client* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.asm_multi_channel_pcm_fmt_blk_v2*, align 8
  %13 = alloca %struct.apr_pkt*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.audio_client* %0, %struct.audio_client** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @PCM_MAX_NUM_CHANNEL, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @APR_HDR_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 48
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %98

32:                                               ; preds = %5
  %33 = load i8*, i8** %15, align 8
  %34 = bitcast i8* %33 to %struct.apr_pkt*
  store %struct.apr_pkt* %34, %struct.apr_pkt** %13, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* @APR_HDR_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to %struct.asm_multi_channel_pcm_fmt_blk_v2*
  store %struct.asm_multi_channel_pcm_fmt_blk_v2* %39, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %40 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %41 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %42 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %41, i32 0, i32 0
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %45 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @q6asm_add_hdr(%struct.audio_client* %40, %struct.TYPE_4__* %42, i32 %43, i32 1, i32 %46)
  %48 = load i32, i32* @ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2, align 4
  %49 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %50 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %53 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 44, i32* %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %57 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %60 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %63 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %65 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.asm_multi_channel_pcm_fmt_blk_v2*, %struct.asm_multi_channel_pcm_fmt_blk_v2** %12, align 8
  %67 = getelementptr inbounds %struct.asm_multi_channel_pcm_fmt_blk_v2, %struct.asm_multi_channel_pcm_fmt_blk_v2* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %32
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @PCM_MAX_NUM_CHANNEL, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  br label %90

76:                                               ; preds = %32
  %77 = load i32*, i32** %14, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @q6dsp_map_channels(i32* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %83 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %16, align 4
  br label %94

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.audio_client*, %struct.audio_client** %7, align 8
  %92 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %93 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %91, %struct.apr_pkt* %92)
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load %struct.apr_pkt*, %struct.apr_pkt** %13, align 8
  %96 = call i32 @kfree(%struct.apr_pkt* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %29
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @q6dsp_map_channels(i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
