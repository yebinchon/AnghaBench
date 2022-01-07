; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_convert_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_convert_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.rsnd_src = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_src_convert_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsnd_src_convert_rate(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.rsnd_src*, align 8
  %8 = alloca i64, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %4, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %5, align 8
  %9 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %10 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %9)
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %12 = call %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod* %11)
  store %struct.rsnd_src* %12, %struct.rsnd_src** %7, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = icmp ne %struct.snd_pcm_runtime* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %18 = call i32 @rsnd_src_sync_is_enabled(%struct.rsnd_mod* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %22 = call i64 @rsnd_io_converted_rate(%struct.rsnd_dai_stream* %21)
  store i64 %22, i64* %3, align 8
  br label %42

23:                                               ; preds = %16
  %24 = load %struct.rsnd_src*, %struct.rsnd_src** %7, align 8
  %25 = getelementptr inbounds %struct.rsnd_src, %struct.rsnd_src* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %32 = call i64 @rsnd_io_converted_rate(%struct.rsnd_dai_stream* %31)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %20, %15
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_src* @rsnd_mod_to_src(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_src_sync_is_enabled(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_io_converted_rate(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
