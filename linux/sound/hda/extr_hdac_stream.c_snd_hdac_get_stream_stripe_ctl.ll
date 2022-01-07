; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_get_stream_stripe_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_get_stream_stripe_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@GCAP = common dso_local global i32 0, align 4
@AZX_GCAP_NSDO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_get_stream_stripe_ctl(%struct.hdac_bus* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %5, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %25 = load i32, i32* @GCAP, align 4
  %26 = call i32 @snd_hdac_chip_readl(%struct.hdac_bus* %24, i32 %25)
  %27 = load i32, i32* @AZX_GCAP_NSDO, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %56, %2
  %31 = load i32, i32* %11, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %34, 48000
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 48000
  %42 = mul i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = udiv i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %51

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %36
  %52 = load i32, i32* %10, align 4
  %53 = icmp uge i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %59

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = lshr i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %30

59:                                               ; preds = %54, %30
  %60 = load i32, i32* %11, align 4
  %61 = lshr i32 %60, 1
  ret i32 %61
}

declare dso_local i32 @snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
