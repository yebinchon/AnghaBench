; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_compr_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_compr_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_tstamp = type { i32, i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)* @uniphier_aio_compr_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_compr_pointer(%struct.snd_compr_stream* %0, %struct.snd_compr_tstamp* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_tstamp*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.uniphier_aio*, align 8
  %8 = alloca %struct.uniphier_aio_sub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_tstamp* %1, %struct.snd_compr_tstamp** %4, align 8
  %12 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %15, i32 0, i32 1
  %17 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %16, align 8
  store %struct.snd_compr_runtime* %17, %struct.snd_compr_runtime** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.uniphier_aio* @uniphier_priv(i32 %20)
  store %struct.uniphier_aio* %21, %struct.uniphier_aio** %7, align 8
  %22 = load %struct.uniphier_aio*, %struct.uniphier_aio** %7, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %22, i32 0, i32 0
  %24 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %23, align 8
  %25 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %24, i64 %27
  store %struct.uniphier_aio_sub* %28, %struct.uniphier_aio_sub** %8, align 8
  %29 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %33 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %37 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %38 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %41 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @aiodma_rb_sync(%struct.uniphier_aio_sub* %36, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %46 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %2
  %53 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %54 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %57 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 2
  %60 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %61 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %71

62:                                               ; preds = %2
  %63 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %64 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  %66 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %67 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %70 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %52
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %74 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %8, align 8
  %76 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %75, i32 0, i32 1
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret i32 0
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_sync(%struct.uniphier_aio_sub*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
