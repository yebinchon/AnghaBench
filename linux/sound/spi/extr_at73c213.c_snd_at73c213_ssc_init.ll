; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_ssc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_ssc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCMR = common dso_local global i32 0, align 4
@TCMR_CKO = common dso_local global i32 0, align 4
@TCMR_START = common dso_local global i32 0, align 4
@TCMR_STTDLY = common dso_local global i32 0, align 4
@TCMR_PERIOD = common dso_local global i32 0, align 4
@TFMR = common dso_local global i32 0, align 4
@TFMR_DATLEN = common dso_local global i32 0, align 4
@TFMR_MSBF = common dso_local global i32 0, align 4
@TFMR_DATNB = common dso_local global i32 0, align 4
@TFMR_FSLEN = common dso_local global i32 0, align 4
@TFMR_FSOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*)* @snd_at73c213_ssc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_ssc_init(%struct.snd_at73c213* %0) #0 {
  %2 = alloca %struct.snd_at73c213*, align 8
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %2, align 8
  %3 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %4 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TCMR, align 4
  %9 = load i32, i32* @TCMR_CKO, align 4
  %10 = call i32 @SSC_BF(i32 %9, i32 1)
  %11 = load i32, i32* @TCMR_START, align 4
  %12 = call i32 @SSC_BF(i32 %11, i32 4)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @TCMR_STTDLY, align 4
  %15 = call i32 @SSC_BF(i32 %14, i32 1)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @TCMR_PERIOD, align 4
  %18 = call i32 @SSC_BF(i32 %17, i32 15)
  %19 = or i32 %16, %18
  %20 = call i32 @ssc_writel(i32 %7, i32 %8, i32 %19)
  %21 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %22 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TFMR, align 4
  %27 = load i32, i32* @TFMR_DATLEN, align 4
  %28 = call i32 @SSC_BF(i32 %27, i32 15)
  %29 = load i32, i32* @TFMR_MSBF, align 4
  %30 = call i32 @SSC_BIT(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @TFMR_DATNB, align 4
  %33 = call i32 @SSC_BF(i32 %32, i32 1)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @TFMR_FSLEN, align 4
  %36 = call i32 @SSC_BF(i32 %35, i32 15)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @TFMR_FSOS, align 4
  %39 = call i32 @SSC_BF(i32 %38, i32 1)
  %40 = or i32 %37, %39
  %41 = call i32 @ssc_writel(i32 %25, i32 %26, i32 %40)
  ret i32 0
}

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BF(i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
