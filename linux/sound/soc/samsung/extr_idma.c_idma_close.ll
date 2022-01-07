; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.idma_ctrl* }
%struct.idma_ctrl = type { i32 }

@idma_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"idma_close called with prtd == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @idma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.idma_ctrl*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.idma_ctrl*, %struct.idma_ctrl** %9, align 8
  store %struct.idma_ctrl* %10, %struct.idma_ctrl** %4, align 8
  %11 = load i32, i32* @idma_irq, align 4
  %12 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.idma_ctrl* %12)
  %14 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %15 = icmp ne %struct.idma_ctrl* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %20 = call i32 @kfree(%struct.idma_ctrl* %19)
  ret i32 0
}

declare dso_local i32 @free_irq(i32, %struct.idma_ctrl*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.idma_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
