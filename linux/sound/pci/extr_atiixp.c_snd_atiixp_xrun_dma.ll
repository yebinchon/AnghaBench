; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_xrun_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_xrun_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.atiixp_dma = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"XRUN detected (DMA %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp*, %struct.atiixp_dma*)* @snd_atiixp_xrun_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_xrun_dma(%struct.atiixp* %0, %struct.atiixp_dma* %1) #0 {
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca %struct.atiixp_dma*, align 8
  store %struct.atiixp* %0, %struct.atiixp** %3, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %4, align 8
  %5 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %6 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %11 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %17 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %22 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %28 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snd_pcm_stop_xrun(i32 %29)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_stop_xrun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
