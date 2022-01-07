; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@BDW_DSP_BAR = common dso_local global i32 0, align 4
@SHIM_ISRX = common dso_local global i32 0, align 4
@SHIM_ISRX_DONE = common dso_local global i32 0, align 4
@SHIM_ISRX_BUSY = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bdw_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_sof_dev*
  store %struct.snd_sof_dev* %9, %struct.snd_sof_dev** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %12 = load i32, i32* @BDW_DSP_BAR, align 4
  %13 = load i32, i32* @SHIM_ISRX, align 4
  %14 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SHIM_ISRX_DONE, align 4
  %17 = load i32, i32* @SHIM_ISRX_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
