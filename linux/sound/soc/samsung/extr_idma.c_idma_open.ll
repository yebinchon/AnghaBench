; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.idma_ctrl* }
%struct.idma_ctrl = type { i32 }

@idma_hardware = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idma_irq = common dso_local global i32 0, align 4
@iis_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fail to claim i2s irq , ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @idma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.idma_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %10, i32* @idma_hardware)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.idma_ctrl* @kzalloc(i32 4, i32 %12)
  store %struct.idma_ctrl* %13, %struct.idma_ctrl** %5, align 8
  %14 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %15 = icmp eq %struct.idma_ctrl* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @idma_irq, align 4
  %21 = load i32, i32* @iis_irq, align 4
  %22 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %23 = call i32 @request_irq(i32 %20, i32 %21, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.idma_ctrl* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %30 = call i32 @kfree(%struct.idma_ctrl* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  store %struct.idma_ctrl* %36, %struct.idma_ctrl** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %26, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local %struct.idma_ctrl* @kzalloc(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.idma_ctrl*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.idma_ctrl*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
