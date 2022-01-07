; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pointer_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_pointer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_stream = type { i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_stream*, i32)* @fsi_pointer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_pointer_update(%struct.fsi_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.fsi_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.fsi_stream* %0, %struct.fsi_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %9 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %13 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %16 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %19 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %17, %21
  %23 = icmp sge i32 %14, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %26 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %25, i32 0, i32 3
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %26, align 8
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %5, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %29, align 8
  store %struct.snd_pcm_runtime* %30, %struct.snd_pcm_runtime** %6, align 8
  %31 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %32 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %45 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.fsi_stream*, %struct.fsi_stream** %3, align 8
  %47 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %24
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %50 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %49)
  br label %51

51:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
