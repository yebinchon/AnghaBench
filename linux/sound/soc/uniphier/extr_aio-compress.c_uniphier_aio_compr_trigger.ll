; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_compr_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_compr_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_4__*, %struct.uniphier_aio_sub* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_aio_sub = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unknown trigger(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, i32)* @uniphier_aio_compr_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_compr_trigger(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.uniphier_aio*, align 8
  %8 = alloca %struct.uniphier_aio_sub*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %16, i32 0, i32 1
  %18 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %17, align 8
  store %struct.snd_compr_runtime* %18, %struct.snd_compr_runtime** %6, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.uniphier_aio* @uniphier_priv(i32 %21)
  store %struct.uniphier_aio* %22, %struct.uniphier_aio** %7, align 8
  %23 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %24 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %23, i32 0, i32 1
  %25 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %24, align 8
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %25, i64 %28
  store %struct.uniphier_aio_sub* %29, %struct.uniphier_aio_sub** %8, align 8
  %30 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %31 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.device* %35, %struct.device** %9, align 8
  %36 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %40 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %39, i32 0, i32 1
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %63 [
    i32 129, label %44
    i32 128, label %58
  ]

44:                                               ; preds = %2
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %46 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %47 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %55 = call i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub* %54, i32 1)
  %56 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %57 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %69

58:                                               ; preds = %2
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %60 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %62 = call i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub* %61, i32 0)
  br label %69

63:                                               ; preds = %2
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %58, %44
  %70 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %71 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %70, i32 0, i32 1
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @aiodma_ch_set_enable(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
