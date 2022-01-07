; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_update_bits64.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_update_bits64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_dsp_update_bits64(%struct.snd_sof_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @snd_sof_dsp_update_bits64_unlocked(%struct.snd_sof_dev* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %12, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sof_dsp_update_bits64_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
