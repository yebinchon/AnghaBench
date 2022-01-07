; ModuleID = '/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/parisc/extr_harmony.c_snd_harmony_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_harmony = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_harmony*)* @snd_harmony_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_free(%struct.snd_harmony* %0) #0 {
  %2 = alloca %struct.snd_harmony*, align 8
  store %struct.snd_harmony* %0, %struct.snd_harmony** %2, align 8
  %3 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %4 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %10 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %9, i32 0, i32 3
  %11 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %14 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %20 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %19, i32 0, i32 2
  %21 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %24 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %29 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %32 = call i32 @free_irq(i64 %30, %struct.snd_harmony* %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %35 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %39 = call i32 @kfree(%struct.snd_harmony* %38)
  ret i32 0
}

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_2__*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_harmony*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.snd_harmony*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
