; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_irq_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_irq_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.axg_fifo = type { i32 }

@FIFO_STATUS1 = common dso_local global i32 0, align 4
@FIFO_INT_MASK = common dso_local global i32 0, align 4
@FIFO_INT_COUNT_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected irq - STS 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @axg_fifo_pcm_irq_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_fifo_pcm_irq_block(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.axg_fifo*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = call %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream* %10)
  store %struct.axg_fifo* %11, %struct.axg_fifo** %6, align 8
  %12 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %13 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FIFO_STATUS1, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %7)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @STATUS1_INT_STS(i32 %17)
  %19 = load i32, i32* @FIFO_INT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FIFO_INT_COUNT_REPEAT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %26)
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = call i32 @axg_fifo_dev(%struct.snd_pcm_substream* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.axg_fifo*, %struct.axg_fifo** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @axg_fifo_ack_irq(%struct.axg_fifo* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @IRQ_RETVAL(i32 %37)
  ret i32 %38
}

declare dso_local %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @STATUS1_INT_STS(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @axg_fifo_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @axg_fifo_ack_irq(%struct.axg_fifo*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
