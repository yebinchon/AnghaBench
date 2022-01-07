; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32, i32, %struct.snd_compr_stream* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @uniphier_aio_compr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_compr_open(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.uniphier_aio*, align 8
  %6 = alloca %struct.uniphier_aio_sub*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.uniphier_aio* @uniphier_priv(i32 %13)
  store %struct.uniphier_aio* %14, %struct.uniphier_aio** %5, align 8
  %15 = load %struct.uniphier_aio*, %struct.uniphier_aio** %5, align 8
  %16 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %15, i32 0, i32 0
  %17 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %16, align 8
  %18 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %17, i64 %20
  store %struct.uniphier_aio_sub* %21, %struct.uniphier_aio_sub** %6, align 8
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i32 0, i32 2
  %24 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %23, align 8
  %25 = icmp ne %struct.snd_compr_stream* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %32 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %31, i32 0, i32 2
  store %struct.snd_compr_stream* %30, %struct.snd_compr_stream** %32, align 8
  %33 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %34 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %36 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %38 = call i32 @uniphier_aio_comprdma_new(%struct.snd_soc_pcm_runtime* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %29
  %44 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %45 = call i32 @aio_init(%struct.uniphier_aio_sub* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %41, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @uniphier_aio_comprdma_new(%struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @aio_init(%struct.uniphier_aio_sub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
