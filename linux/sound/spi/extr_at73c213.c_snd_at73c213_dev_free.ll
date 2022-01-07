; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_at73c213* }
%struct.snd_at73c213 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CR = common dso_local global i32 0, align 4
@CR_TXDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_at73c213_dev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_dev_free(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  %3 = alloca %struct.snd_at73c213*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %4 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %5 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %4, i32 0, i32 0
  %6 = load %struct.snd_at73c213*, %struct.snd_at73c213** %5, align 8
  store %struct.snd_at73c213* %6, %struct.snd_at73c213** %3, align 8
  %7 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %8 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CR, align 4
  %13 = load i32, i32* @CR_TXDIS, align 4
  %14 = call i32 @SSC_BIT(i32 %13)
  %15 = call i32 @ssc_writel(i32 %11, i32 %12, i32 %14)
  %16 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %17 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %22 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.snd_at73c213* %24)
  %26 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %27 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @free_irq(i32, %struct.snd_at73c213*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
