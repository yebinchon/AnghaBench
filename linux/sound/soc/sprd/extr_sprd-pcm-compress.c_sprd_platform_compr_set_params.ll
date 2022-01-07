; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_runtime = type { %struct.sprd_compr_stream* }
%struct.sprd_compr_stream = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.sprd_compr_params*)* }
%struct.sprd_compr_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_compr_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to config stage 1 DMA: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to config stage 0 DMA: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to set parameters: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @sprd_platform_compr_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_platform_compr_set_params(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.sprd_compr_stream*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.sprd_compr_params, align 4
  %12 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  %13 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %13, i32 0, i32 2
  %15 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %14, align 8
  store %struct.snd_compr_runtime* %15, %struct.snd_compr_runtime** %6, align 8
  %16 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %16, i32 0, i32 0
  %18 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %17, align 8
  store %struct.sprd_compr_stream* %18, %struct.sprd_compr_stream** %7, align 8
  %19 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %20, align 8
  store %struct.snd_soc_pcm_runtime* %21, %struct.snd_soc_pcm_runtime** %8, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = load i32, i32* @DRV_NAME, align 4
  %24 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %22, i32 %23)
  store %struct.snd_soc_component* %24, %struct.snd_soc_component** %9, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %10, align 8
  %28 = bitcast %struct.sprd_compr_params* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 28, i1 false)
  %29 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %30 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %31 = call i32 @sprd_platform_compr_dma_config(%struct.snd_compr_stream* %29, %struct.snd_compr_params* %30, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %114

39:                                               ; preds = %2
  %40 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %41 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %42 = call i32 @sprd_platform_compr_dma_config(%struct.snd_compr_stream* %40, %struct.snd_compr_params* %41, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %105

49:                                               ; preds = %39
  %50 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %51 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %55 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %60 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %64 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %68 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %72 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %77 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.sprd_compr_params, %struct.sprd_compr_params* %11, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %82 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (i32, %struct.sprd_compr_params*)*, i32 (i32, %struct.sprd_compr_params*)** %84, align 8
  %86 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %87 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %85(i32 %88, %struct.sprd_compr_params* %11)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %49
  %93 = load %struct.device*, %struct.device** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %114

97:                                               ; preds = %92
  %98 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %99 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dma_release_channel(i32 %103)
  br label %105

105:                                              ; preds = %97, %45
  %106 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %7, align 8
  %107 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dma_release_channel(i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %96, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprd_platform_compr_dma_config(%struct.snd_compr_stream*, %struct.snd_compr_params*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
