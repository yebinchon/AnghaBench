; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_at73c213 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IER = common dso_local global i32 0, align 4
@IER_ENDTX = common dso_local global i32 0, align 4
@PDC_PTCR = common dso_local global i32 0, align 4
@PDC_PTCR_TXTEN = common dso_local global i32 0, align 4
@PDC_PTCR_TXTDIS = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@IDR_ENDTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"spurious command %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_at73c213_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_at73c213*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_at73c213* %8, %struct.snd_at73c213** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %10 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %32
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %15 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IER, align 4
  %20 = load i32, i32* @IER_ENDTX, align 4
  %21 = call i32 @SSC_BIT(i32 %20)
  %22 = call i32 @ssc_writel(i32 %18, i32 %19, i32 %21)
  %23 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %24 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PDC_PTCR, align 4
  %29 = load i32, i32* @PDC_PTCR_TXTEN, align 4
  %30 = call i32 @SSC_BIT(i32 %29)
  %31 = call i32 @ssc_writel(i32 %27, i32 %28, i32 %30)
  br label %60

32:                                               ; preds = %2
  %33 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %34 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PDC_PTCR, align 4
  %39 = load i32, i32* @PDC_PTCR_TXTDIS, align 4
  %40 = call i32 @SSC_BIT(i32 %39)
  %41 = call i32 @ssc_writel(i32 %37, i32 %38, i32 %40)
  %42 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %43 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IDR, align 4
  %48 = load i32, i32* @IDR_ENDTX, align 4
  %49 = call i32 @SSC_BIT(i32 %48)
  %50 = call i32 @ssc_writel(i32 %46, i32 %47, i32 %49)
  br label %60

51:                                               ; preds = %2
  %52 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %53 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %51, %32, %13
  %61 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  %62 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
