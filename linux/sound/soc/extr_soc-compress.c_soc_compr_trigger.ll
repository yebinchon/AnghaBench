; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__*, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_soc_dai = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, i32)* @soc_compr_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_trigger(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %13, align 8
  store %struct.snd_soc_dai* %14, %struct.snd_soc_dai** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %16, align 8
  store %struct.snd_soc_dai* %17, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mutex_lock_nested(i32* %21, i32 %26)
  %28 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @soc_compr_components_trigger(%struct.snd_compr_stream* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %77

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)** %47, align 8
  %49 = icmp ne i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)** %56, align 8
  %58 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %61 = call i32 %57(%struct.snd_compr_stream* %58, i32 %59, %struct.snd_soc_dai* %60)
  br label %62

62:                                               ; preds = %50, %41, %34
  %63 = load i32, i32* %4, align 4
  switch i32 %63, label %76 [
    i32 129, label %64
    i32 128, label %70
  ]

64:                                               ; preds = %62
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %66 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %67 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai* %65, i32 0, i32 %68)
  br label %76

70:                                               ; preds = %62
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %72 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %73 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai* %71, i32 1, i32 %74)
  br label %76

76:                                               ; preds = %62, %70, %64
  br label %77

77:                                               ; preds = %76, %33
  %78 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @soc_compr_components_trigger(%struct.snd_compr_stream*, i32) #1

declare dso_local i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
