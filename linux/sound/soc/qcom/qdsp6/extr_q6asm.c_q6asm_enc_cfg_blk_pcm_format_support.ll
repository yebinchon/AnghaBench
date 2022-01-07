; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_enc_cfg_blk_pcm_format_support.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_enc_cfg_blk_pcm_format_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_client = type { i32 }
%struct.asm_multi_channel_pcm_enc_cfg_v2 = type { i32, i32*, i8*, i32, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.apr_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@APR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASM_STREAM_CMD_SET_ENCDEC_PARAM = common dso_local global i32 0, align 4
@ASM_PARAM_ID_ENCDEC_ENC_CFG_BLK_V2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6asm_enc_cfg_blk_pcm_format_support(%struct.audio_client* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.audio_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.asm_multi_channel_pcm_enc_cfg_v2*, align 8
  %11 = alloca %struct.apr_pkt*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.audio_client* %0, %struct.audio_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @APR_HDR_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 56
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %99

29:                                               ; preds = %4
  %30 = load i8*, i8** %16, align 8
  %31 = bitcast i8* %30 to %struct.apr_pkt*
  store %struct.apr_pkt* %31, %struct.apr_pkt** %11, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i32, i32* @APR_HDR_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.asm_multi_channel_pcm_enc_cfg_v2*
  store %struct.asm_multi_channel_pcm_enc_cfg_v2* %36, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %37 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %38 = load %struct.apr_pkt*, %struct.apr_pkt** %11, align 8
  %39 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %38, i32 0, i32 0
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %42 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @q6asm_add_hdr(%struct.audio_client* %37, %struct.TYPE_6__* %39, i32 %40, i32 1, i32 %43)
  %45 = load i32, i32* @ASM_STREAM_CMD_SET_ENCDEC_PARAM, align 4
  %46 = load %struct.apr_pkt*, %struct.apr_pkt** %11, align 8
  %47 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @ASM_PARAM_ID_ENCDEC_ENC_CFG_BLK_V2, align 4
  %50 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %51 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %54 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 48, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %58 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %61 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %68 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %72 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %75 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %78 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %80 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.asm_multi_channel_pcm_enc_cfg_v2*, %struct.asm_multi_channel_pcm_enc_cfg_v2** %10, align 8
  %82 = getelementptr inbounds %struct.asm_multi_channel_pcm_enc_cfg_v2, %struct.asm_multi_channel_pcm_enc_cfg_v2* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @q6dsp_map_channels(i32* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %29
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %95

91:                                               ; preds = %29
  %92 = load %struct.audio_client*, %struct.audio_client** %6, align 8
  %93 = load %struct.apr_pkt*, %struct.apr_pkt** %11, align 8
  %94 = call i32 @q6asm_ac_send_cmd_sync(%struct.audio_client* %92, %struct.apr_pkt* %93)
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.apr_pkt*, %struct.apr_pkt** %11, align 8
  %97 = call i32 @kfree(%struct.apr_pkt* %96)
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_add_hdr(%struct.audio_client*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @q6dsp_map_channels(i32*, i8*) #1

declare dso_local i32 @q6asm_ac_send_cmd_sync(%struct.audio_client*, %struct.apr_pkt*) #1

declare dso_local i32 @kfree(%struct.apr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
