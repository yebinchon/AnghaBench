; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_edma-pcm.c_edma_pcm_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_edma-pcm.c_edma_pcm_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i8** }
%struct.device = type { i64 }

@edma_dmaengine_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edma_pcm_platform_register(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %10, %struct.snd_dmaengine_pcm_config* @edma_dmaengine_pcm_config, i32 0)
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_dmaengine_pcm_config* @devm_kzalloc(%struct.device* %13, i32 8, i32 %14)
  store %struct.snd_dmaengine_pcm_config* %15, %struct.snd_dmaengine_pcm_config** %4, align 8
  %16 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %4, align 8
  %17 = icmp ne %struct.snd_dmaengine_pcm_config* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %12
  %22 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %4, align 8
  %23 = bitcast %struct.snd_dmaengine_pcm_config* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.snd_dmaengine_pcm_config* @edma_dmaengine_pcm_config to i8*), i64 8, i1 false)
  %24 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %4, align 8
  %25 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %4, align 8
  %29 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %4, align 8
  %34 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %32, %struct.snd_dmaengine_pcm_config* %33, i32 0)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %21, %18, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
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
