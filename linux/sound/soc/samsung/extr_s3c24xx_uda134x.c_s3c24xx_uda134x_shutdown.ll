; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_uda134x.c_s3c24xx_uda134x_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_uda134x.c_s3c24xx_uda134x_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.s3c24xx_uda134x = type { i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @s3c24xx_uda134x_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_uda134x_shutdown(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.s3c24xx_uda134x*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  store %struct.snd_soc_pcm_runtime* %7, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.s3c24xx_uda134x* @snd_soc_card_get_drvdata(i32 %10)
  store %struct.s3c24xx_uda134x* %11, %struct.s3c24xx_uda134x** %4, align 8
  %12 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @clk_put(i32* %26)
  %28 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %31 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @clk_put(i32* %32)
  %34 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %23, %1
  %37 = load %struct.s3c24xx_uda134x*, %struct.s3c24xx_uda134x** %4, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_uda134x, %struct.s3c24xx_uda134x* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.s3c24xx_uda134x* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
