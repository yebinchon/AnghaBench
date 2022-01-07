; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uniphier_aio = type { %struct.TYPE_5__*, %struct.uniphier_aio_sub* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_aio_sub = type { i32, %struct.snd_compr_params, i32 }

@SND_AUDIOCODEC_IEC61937 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Codec ID is not supported(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_AUDIOPROFILE_IEC61937_SPDIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Codec profile is not supported(%d)\0A\00", align 1
@IEC61937_PC_AAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @uniphier_aio_compr_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_compr_set_params(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.uniphier_aio*, align 8
  %8 = alloca %struct.uniphier_aio_sub*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  %11 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.uniphier_aio* @uniphier_priv(i32 %16)
  store %struct.uniphier_aio* %17, %struct.uniphier_aio** %7, align 8
  %18 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %19 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %18, i32 0, i32 1
  %20 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %19, align 8
  %21 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %20, i64 %23
  store %struct.uniphier_aio_sub* %24, %struct.uniphier_aio_sub** %8, align 8
  %25 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %26 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.device* %30, %struct.device** %9, align 8
  %31 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %32 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SND_AUDIOCODEC_IEC61937, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %40 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %84

46:                                               ; preds = %2
  %47 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %48 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SND_AUDIOPROFILE_IEC61937_SPDIF, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %56 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %84

62:                                               ; preds = %46
  %63 = load i32, i32* @IEC61937_PC_AAC, align 4
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %67 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %66, i32 0, i32 1
  %68 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %69 = bitcast %struct.snd_compr_params* %67 to i8*
  %70 = bitcast %struct.snd_compr_params* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %72 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %74 = call i32 @aio_port_reset(%struct.uniphier_aio_sub* %73)
  %75 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %76 = call i32 @aio_src_reset(%struct.uniphier_aio_sub* %75)
  %77 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %78 = call i32 @uniphier_aio_compr_prepare(%struct.snd_compr_stream* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %81, %53, %37
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aio_port_reset(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_src_reset(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @uniphier_aio_compr_prepare(%struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
