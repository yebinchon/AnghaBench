; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_capture_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_capture_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i32, i64 }

@SR_RXB = common dso_local global i32 0, align 4
@AACI_IE = common dso_local global i64 0, align 8
@IE_ORIE = common dso_local global i32 0, align 4
@IE_RXIE = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@AACI_RXCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_pcm_capture_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_pcm_capture_stop(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  %4 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %5 = load i32, i32* @SR_RXB, align 4
  %6 = call i32 @aaci_chan_wait_ready(%struct.aaci_runtime* %4, i32 %5)
  %7 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AACI_IE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @IE_ORIE, align 4
  %14 = load i32, i32* @IE_RXIE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %21 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AACI_IE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @CR_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %29 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %33 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %36 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AACI_RXCR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
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
