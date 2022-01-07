; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_dip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_dip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_intelhad = type { i64 }
%union.aud_ctrl_st = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.aud_info_frame2 = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.aud_info_frame3 = type { i32 }
%struct.TYPE_6__ = type { i32 }

@__const.had_prog_dip.ctrl_state = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@__const.had_prog_dip.frame2 = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@AUD_CNTL_ST = common dso_local global i32 0, align 4
@DP_INFO_FRAME_WORD1 = common dso_local global i32 0, align 4
@HDMI_INFO_FRAME_WORD1 = common dso_local global i32 0, align 4
@BYTES_PER_WORD = common dso_local global i32 0, align 4
@AUD_HDMIW_INFOFR = common dso_local global i32 0, align 4
@HAD_MAX_DIP_WORDS = common dso_local global i32 0, align 4
@VALID_DIP_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_intelhad*)* @had_prog_dip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @had_prog_dip(%struct.snd_pcm_substream* %0, %struct.snd_intelhad* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.aud_ctrl_st, align 4
  %7 = alloca %union.aud_info_frame2, align 4
  %8 = alloca %union.aud_info_frame3, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_intelhad* %1, %struct.snd_intelhad** %4, align 8
  %13 = bitcast %union.aud_ctrl_st* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.had_prog_dip.ctrl_state to i8*), i64 8, i1 false)
  %14 = bitcast %union.aud_info_frame2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.had_prog_dip.frame2 to i8*), i64 8, i1 false)
  %15 = bitcast %union.aud_info_frame3* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %22 = load i32, i32* @AUD_CNTL_ST, align 4
  %23 = bitcast %union.aud_ctrl_st* %6 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @had_write_register(%struct.snd_intelhad* %21, i32 %22, i32 %24)
  %26 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @had_channel_allocation(%struct.snd_intelhad* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %30 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load i32, i32* @DP_INFO_FRAME_WORD1, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %41, 24
  %43 = or i32 %40, %42
  %44 = bitcast %union.aud_info_frame2* %7 to i32*
  store i32 %43, i32* %44, align 4
  br label %112

45:                                               ; preds = %2
  %46 = load i32, i32* @HDMI_INFO_FRAME_WORD1, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = bitcast %union.aud_info_frame2* %7 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = bitcast %union.aud_info_frame3* %8 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %70, %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BYTES_PER_WORD, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 8
  %66 = ashr i32 %63, %65
  %67 = and i32 %66, 255
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %58

73:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BYTES_PER_WORD, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = bitcast %union.aud_info_frame2* %7 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %81, 8
  %83 = ashr i32 %80, %82
  %84 = and i32 %83, 255
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %74

90:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @BYTES_PER_WORD, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = bitcast %union.aud_info_frame3* %8 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 8
  %100 = ashr i32 %97, %99
  %101 = and i32 %100, 255
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %91

107:                                              ; preds = %91
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 0, %108
  %110 = bitcast %union.aud_info_frame2* %7 to %struct.TYPE_7__*
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %33
  %113 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %114 = load i32, i32* @AUD_HDMIW_INFOFR, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @had_write_register(%struct.snd_intelhad* %113, i32 %114, i32 %115)
  %117 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %118 = load i32, i32* @AUD_HDMIW_INFOFR, align 4
  %119 = bitcast %union.aud_info_frame2* %7 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @had_write_register(%struct.snd_intelhad* %117, i32 %118, i32 %120)
  %122 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %123 = load i32, i32* @AUD_HDMIW_INFOFR, align 4
  %124 = bitcast %union.aud_info_frame3* %8 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @had_write_register(%struct.snd_intelhad* %122, i32 %123, i32 %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %137, %112
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @HAD_MAX_DIP_WORDS, align 4
  %130 = load i32, i32* @VALID_DIP_WORDS, align 4
  %131 = sub nsw i32 %129, %130
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %135 = load i32, i32* @AUD_HDMIW_INFOFR, align 4
  %136 = call i32 @had_write_register(%struct.snd_intelhad* %134, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %127

140:                                              ; preds = %127
  %141 = bitcast %union.aud_ctrl_st* %6 to %struct.TYPE_8__*
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = bitcast %union.aud_ctrl_st* %6 to %struct.TYPE_8__*
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %146 = load i32, i32* @AUD_CNTL_ST, align 4
  %147 = bitcast %union.aud_ctrl_st* %6 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @had_write_register(%struct.snd_intelhad* %145, i32 %146, i32 %148)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #2

declare dso_local i32 @had_channel_allocation(%struct.snd_intelhad*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
