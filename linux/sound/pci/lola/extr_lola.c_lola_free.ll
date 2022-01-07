; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*)* @lola_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_free(%struct.lola* %0) #0 {
  %2 = alloca %struct.lola*, align 8
  store %struct.lola* %0, %struct.lola** %2, align 8
  %3 = load %struct.lola*, %struct.lola** %2, align 8
  %4 = getelementptr inbounds %struct.lola, %struct.lola* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.lola*, %struct.lola** %2, align 8
  %9 = call i32 @lola_stop_hw(%struct.lola* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.lola*, %struct.lola** %2, align 8
  %12 = call i32 @lola_free_pcm(%struct.lola* %11)
  %13 = load %struct.lola*, %struct.lola** %2, align 8
  %14 = call i32 @lola_free_mixer(%struct.lola* %13)
  %15 = load %struct.lola*, %struct.lola** %2, align 8
  %16 = getelementptr inbounds %struct.lola, %struct.lola* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.lola*, %struct.lola** %2, align 8
  %21 = getelementptr inbounds %struct.lola, %struct.lola* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.lola*, %struct.lola** %2, align 8
  %24 = bitcast %struct.lola* %23 to i8*
  %25 = call i32 @free_irq(i64 %22, i8* %24)
  br label %26

26:                                               ; preds = %19, %10
  %27 = load %struct.lola*, %struct.lola** %2, align 8
  %28 = getelementptr inbounds %struct.lola, %struct.lola* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.lola*, %struct.lola** %2, align 8
  %35 = getelementptr inbounds %struct.lola, %struct.lola* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iounmap(i32 %39)
  %41 = load %struct.lola*, %struct.lola** %2, align 8
  %42 = getelementptr inbounds %struct.lola, %struct.lola* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %26
  %47 = load %struct.lola*, %struct.lola** %2, align 8
  %48 = getelementptr inbounds %struct.lola, %struct.lola* %47, i32 0, i32 2
  %49 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %46, %26
  %51 = load %struct.lola*, %struct.lola** %2, align 8
  %52 = getelementptr inbounds %struct.lola, %struct.lola* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pci_release_regions(i32 %53)
  %55 = load %struct.lola*, %struct.lola** %2, align 8
  %56 = getelementptr inbounds %struct.lola, %struct.lola* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_disable_device(i32 %57)
  %59 = load %struct.lola*, %struct.lola** %2, align 8
  %60 = call i32 @kfree(%struct.lola* %59)
  ret void
}

declare dso_local i32 @lola_stop_hw(%struct.lola*) #1

declare dso_local i32 @lola_free_pcm(%struct.lola*) #1

declare dso_local i32 @lola_free_mixer(%struct.lola*) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
