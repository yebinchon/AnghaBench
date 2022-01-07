; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_sdma-pcm.c_sdma_pcm_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_sdma-pcm.c_sdma_pcm_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i8** }
%struct.device = type { i32 }

@sdma_dmaengine_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_pcm_platform_register(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %16, %struct.snd_dmaengine_pcm_config* @sdma_dmaengine_pcm_config, i32 0)
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %12, %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_dmaengine_pcm_config* @devm_kzalloc(%struct.device* %19, i32 8, i32 %20)
  store %struct.snd_dmaengine_pcm_config* %21, %struct.snd_dmaengine_pcm_config** %8, align 8
  %22 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %8, align 8
  %23 = icmp ne %struct.snd_dmaengine_pcm_config* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %18
  %28 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %8, align 8
  %29 = bitcast %struct.snd_dmaengine_pcm_config* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.snd_dmaengine_pcm_config* @sdma_dmaengine_pcm_config to i8*), i64 8, i1 false)
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_HALF_DUPLEX, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %6, align 8
  store i8* null, i8** %7, align 8
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %8, align 8
  %47 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %8, align 8
  %52 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %55, %struct.snd_dmaengine_pcm_config* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %24, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, %struct.snd_dmaengine_pcm_config*, i32) #1

declare dso_local %struct.snd_dmaengine_pcm_config* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
