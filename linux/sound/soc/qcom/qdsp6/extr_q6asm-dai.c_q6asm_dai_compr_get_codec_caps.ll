; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_get_codec_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_get_codec_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_codec_caps = type { i32 }
%struct.snd_compr_stream = type { i32 }

@q6asm_compr_caps = common dso_local global %struct.snd_compr_codec_caps zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_codec_caps*)* @q6asm_dai_compr_get_codec_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_get_codec_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_codec_caps* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_codec_caps*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_codec_caps* %1, %struct.snd_compr_codec_caps** %4, align 8
  %5 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %4, align 8
  %6 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %4, align 8
  %10 = bitcast %struct.snd_compr_codec_caps* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.snd_compr_codec_caps* @q6asm_compr_caps to i8*), i64 4, i1 false)
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
