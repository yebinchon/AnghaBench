; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.snd_compr_runtime* }
%struct.snd_compr_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32, i32, i32 }
%struct.snd_compr_tstamp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)* @q6asm_dai_compr_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_pointer(%struct.snd_compr_stream* %0, %struct.snd_compr_tstamp* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_tstamp*, align 8
  %5 = alloca %struct.snd_compr_runtime*, align 8
  %6 = alloca %struct.q6asm_dai_rtd*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_tstamp* %1, %struct.snd_compr_tstamp** %4, align 8
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %8, i32 0, i32 0
  %10 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %9, align 8
  store %struct.snd_compr_runtime* %10, %struct.snd_compr_runtime** %5, align 8
  %11 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %11, i32 0, i32 0
  %13 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %12, align 8
  store %struct.q6asm_dai_rtd* %13, %struct.q6asm_dai_rtd** %6, align 8
  %14 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %15 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %14, i32 0, i32 2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %19 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %22 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %24 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %27 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  %30 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %31 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %6, align 8
  %33 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %32, i32 0, i32 2
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
