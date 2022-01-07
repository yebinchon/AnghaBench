; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_playback_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_playback_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i32, i64 }

@SR_TXB = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@AACI_IE = common dso_local global i64 0, align 8
@IE_URIE = common dso_local global i32 0, align 4
@IE_TXIE = common dso_local global i32 0, align 4
@AACI_TXCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_pcm_playback_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_pcm_playback_start(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  %4 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %5 = load i32, i32* @SR_TXB, align 4
  %6 = call i32 @aaci_chan_wait_ready(%struct.aaci_runtime* %4, i32 %5)
  %7 = load i32, i32* @CR_EN, align 4
  %8 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %13 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AACI_IE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @IE_URIE, align 4
  %19 = load i32, i32* @IE_TXIE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %25 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AACI_IE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %31 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %34 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AACI_TXCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @aaci_chan_wait_ready(%struct.aaci_runtime*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
