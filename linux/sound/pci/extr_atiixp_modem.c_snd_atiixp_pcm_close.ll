; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atiixp_dma = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.atiixp_modem*, i32)* }
%struct.atiixp_modem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.atiixp_dma*)* @snd_atiixp_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_close(%struct.snd_pcm_substream* %0, %struct.atiixp_dma* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.atiixp_dma*, align 8
  %6 = alloca %struct.atiixp_modem*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %5, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.atiixp_modem* %8, %struct.atiixp_modem** %6, align 8
  %9 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %10 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %15 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.atiixp_modem*, i32)* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i1 [ true, %2 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %31 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %34 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %36, align 8
  %38 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %39 = call i32 %37(%struct.atiixp_modem* %38, i32 0)
  %40 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %41 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %44 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %46 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %29, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
