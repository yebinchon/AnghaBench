; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.snd_compr_runtime* }
%struct.snd_compr_runtime = type { %struct.sprd_compr_stream* }
%struct.sprd_compr_stream = type { i64, i64, %struct.sprd_compr_dma* }
%struct.sprd_compr_dma = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sprd_platform_compr_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_platform_compr_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_runtime*, align 8
  %5 = alloca %struct.sprd_compr_stream*, align 8
  %6 = alloca %struct.sprd_compr_dma*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.snd_compr_stream*
  store %struct.snd_compr_stream* %8, %struct.snd_compr_stream** %3, align 8
  %9 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %9, i32 0, i32 0
  %11 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %10, align 8
  store %struct.snd_compr_runtime* %11, %struct.snd_compr_runtime** %4, align 8
  %12 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %12, i32 0, i32 0
  %14 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %13, align 8
  store %struct.sprd_compr_stream* %14, %struct.sprd_compr_stream** %5, align 8
  %15 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %16 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %15, i32 0, i32 2
  %17 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %16, align 8
  %18 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %17, i64 1
  store %struct.sprd_compr_dma* %18, %struct.sprd_compr_dma** %6, align 8
  %19 = load %struct.sprd_compr_dma*, %struct.sprd_compr_dma** %6, align 8
  %20 = getelementptr inbounds %struct.sprd_compr_dma, %struct.sprd_compr_dma* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %23 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %27 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %30 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %35 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sprd_compr_stream*, %struct.sprd_compr_stream** %5, align 8
  %38 = getelementptr inbounds %struct.sprd_compr_stream, %struct.sprd_compr_stream* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %41 = call i32 @snd_compr_fragment_elapsed(%struct.snd_compr_stream* %40)
  ret void
}

declare dso_local i32 @snd_compr_fragment_elapsed(%struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
