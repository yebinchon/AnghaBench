; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_status_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_status_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_intelhad = type { i32 }
%union.aud_ch_status_0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%union.aud_ch_status_1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@__const.had_prog_status_reg.ch_stat0 = private unnamed_addr constant { i32, [8 x i8] } { i32 0, [8 x i8] undef }, align 4
@__const.had_prog_status_reg.ch_stat1 = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@IEC958_AES3_CON_CLOCK = common dso_local global i32 0, align 4
@CH_STATUS_MAP_32KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_44KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_48KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_88KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_96KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_176KHZ = common dso_local global i32 0, align 4
@CH_STATUS_MAP_192KHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUD_CH_STATUS_0 = common dso_local global i32 0, align 4
@MAX_SMPL_WIDTH_20 = common dso_local global i32 0, align 4
@SMPL_WIDTH_16BITS = common dso_local global i32 0, align 4
@MAX_SMPL_WIDTH_24 = common dso_local global i32 0, align 4
@SMPL_WIDTH_24BITS = common dso_local global i32 0, align 4
@AUD_CH_STATUS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_intelhad*)* @had_prog_status_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_prog_status_reg(%struct.snd_pcm_substream* %0, %struct.snd_intelhad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_intelhad*, align 8
  %6 = alloca %union.aud_ch_status_0, align 4
  %7 = alloca %union.aud_ch_status_1, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_intelhad* %1, %struct.snd_intelhad** %5, align 8
  %8 = bitcast %union.aud_ch_status_0* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ({ i32, [8 x i8] }* @__const.had_prog_status_reg.ch_stat0 to i8*), i64 12, i1 false)
  %9 = bitcast %union.aud_ch_status_1* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.had_prog_status_reg.ch_stat1 to i8*), i64 8, i1 false)
  %10 = load %struct.snd_intelhad*, %struct.snd_intelhad** %5, align 8
  %11 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 1
  %16 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_intelhad*, %struct.snd_intelhad** %5, align 8
  %19 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEC958_AES3_CON_CLOCK, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 4
  %24 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %59 [
    i32 135, label %31
    i32 134, label %35
    i32 133, label %39
    i32 132, label %43
    i32 131, label %47
    i32 137, label %51
    i32 136, label %55
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @CH_STATUS_MAP_32KHZ, align 4
  %33 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %62

35:                                               ; preds = %2
  %36 = load i32, i32* @CH_STATUS_MAP_44KHZ, align 4
  %37 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %62

39:                                               ; preds = %2
  %40 = load i32, i32* @CH_STATUS_MAP_48KHZ, align 4
  %41 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %2
  %44 = load i32, i32* @CH_STATUS_MAP_88KHZ, align 4
  %45 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %62

47:                                               ; preds = %2
  %48 = load i32, i32* @CH_STATUS_MAP_96KHZ, align 4
  %49 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %62

51:                                               ; preds = %2
  %52 = load i32, i32* @CH_STATUS_MAP_176KHZ, align 4
  %53 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %62

55:                                               ; preds = %2
  %56 = load i32, i32* @CH_STATUS_MAP_192KHZ, align 4
  %57 = bitcast %union.aud_ch_status_0* %6 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %96

62:                                               ; preds = %55, %51, %47, %43, %39, %35, %31
  %63 = load %struct.snd_intelhad*, %struct.snd_intelhad** %5, align 8
  %64 = load i32, i32* @AUD_CH_STATUS_0, align 4
  %65 = bitcast %union.aud_ch_status_0* %6 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @had_write_register(%struct.snd_intelhad* %63, i32 %64, i32 %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %87 [
    i32 130, label %73
    i32 129, label %80
    i32 128, label %80
  ]

73:                                               ; preds = %62
  %74 = load i32, i32* @MAX_SMPL_WIDTH_20, align 4
  %75 = bitcast %union.aud_ch_status_1* %7 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @SMPL_WIDTH_16BITS, align 4
  %78 = bitcast %union.aud_ch_status_1* %7 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %90

80:                                               ; preds = %62, %62
  %81 = load i32, i32* @MAX_SMPL_WIDTH_24, align 4
  %82 = bitcast %union.aud_ch_status_1* %7 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @SMPL_WIDTH_24BITS, align 4
  %85 = bitcast %union.aud_ch_status_1* %7 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %62
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %80, %73
  %91 = load %struct.snd_intelhad*, %struct.snd_intelhad** %5, align 8
  %92 = load i32, i32* @AUD_CH_STATUS_1, align 4
  %93 = bitcast %union.aud_ch_status_1* %7 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @had_write_register(%struct.snd_intelhad* %91, i32 %92, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %87, %59
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
