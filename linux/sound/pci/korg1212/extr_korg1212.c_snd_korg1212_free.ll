; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*)* @snd_korg1212_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_free(%struct.snd_korg1212* %0) #0 {
  %2 = alloca %struct.snd_korg1212*, align 8
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %2, align 8
  %3 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %4 = call i32 @snd_korg1212_TurnOffIdleMonitor(%struct.snd_korg1212* %3)
  %5 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %6 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %11 = call i32 @snd_korg1212_DisableCardInterrupts(%struct.snd_korg1212* %10)
  %12 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %13 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.snd_korg1212* %15)
  %17 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %18 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %17, i32 0, i32 0
  store i64 -1, i64* %18, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %21 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %26 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @iounmap(i32* %27)
  %29 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %30 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %29, i32 0, i32 6
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %33 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_release_regions(i32 %34)
  %36 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %37 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %43 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %42, i32 0, i32 5
  %44 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %43)
  %45 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %46 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %31
  %49 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %50 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %56 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %55, i32 0, i32 4
  %57 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %56)
  %58 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %59 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %63 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %69 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %68, i32 0, i32 3
  %70 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %69)
  %71 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %72 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %76 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %82 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %81, i32 0, i32 2
  %83 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %82)
  %84 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %85 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %74
  %88 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %89 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pci_disable_device(i32 %90)
  %92 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %93 = call i32 @kfree(%struct.snd_korg1212* %92)
  ret i32 0
}

declare dso_local i32 @snd_korg1212_TurnOffIdleMonitor(%struct.snd_korg1212*) #1

declare dso_local i32 @snd_korg1212_DisableCardInterrupts(%struct.snd_korg1212*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_korg1212*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_korg1212*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
