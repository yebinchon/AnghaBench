; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.dw_i2s_dev* }
%struct.dw_i2s_dev = type { i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @dw_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.dw_i2s_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %12, align 8
  store %struct.dw_i2s_dev* %13, %struct.dw_i2s_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %59 [
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %42
    i32 128, label %42
    i32 133, label %42
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %23 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @WRITE_ONCE(i32 %24, i32 0)
  %26 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %27 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = call i32 @rcu_assign_pointer(i32 %28, %struct.snd_pcm_substream* %29)
  br label %41

31:                                               ; preds = %15
  %32 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %33 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WRITE_ONCE(i32 %34, i32 0)
  %36 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %37 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = call i32 @rcu_assign_pointer(i32 %38, %struct.snd_pcm_substream* %39)
  br label %41

41:                                               ; preds = %31, %21
  br label %62

42:                                               ; preds = %2, %2, %2
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %50 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rcu_assign_pointer(i32 %51, %struct.snd_pcm_substream* null)
  br label %58

53:                                               ; preds = %42
  %54 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %55 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rcu_assign_pointer(i32 %56, %struct.snd_pcm_substream* null)
  br label %58

58:                                               ; preds = %53, %48
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %58, %41
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
