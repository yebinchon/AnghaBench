; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32, i32 }
%struct.pmac_stream = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*, %struct.pmac_stream*, %struct.snd_pcm_substream*)* @snd_pmac_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_pcm_close(%struct.snd_pmac* %0, %struct.pmac_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca %struct.pmac_stream*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.pmac_stream*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store %struct.pmac_stream* %1, %struct.pmac_stream** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %9 = load %struct.pmac_stream*, %struct.pmac_stream** %6, align 8
  %10 = call i32 @snd_pmac_dma_stop(%struct.pmac_stream* %9)
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %12 = load %struct.pmac_stream*, %struct.pmac_stream** %6, align 8
  %13 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @another_stream(i32 %14)
  %16 = call %struct.pmac_stream* @snd_pmac_get_stream(%struct.snd_pmac* %11, i32 %15)
  store %struct.pmac_stream* %16, %struct.pmac_stream** %8, align 8
  %17 = load %struct.pmac_stream*, %struct.pmac_stream** %8, align 8
  %18 = icmp ne %struct.pmac_stream* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pmac_stream*, %struct.pmac_stream** %8, align 8
  %27 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pmac_stream*, %struct.pmac_stream** %8, align 8
  %32 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @snd_pmac_dma_stop(%struct.pmac_stream*) #1

declare dso_local %struct.pmac_stream* @snd_pmac_get_stream(%struct.snd_pmac*, i32) #1

declare dso_local i32 @another_stream(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
