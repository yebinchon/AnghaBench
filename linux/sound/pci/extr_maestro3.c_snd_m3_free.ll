; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, i64, i32, i32, i32, i64, i32, %struct.snd_m3*, i32, i64, i64, i64, i32 }
%struct.m3_dma = type { i32, i64, i32, i32, i32, i64, i32, %struct.m3_dma*, i32, i64, i64, i64, i32 }

@HOST_INT_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*)* @snd_m3_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_free(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca %struct.m3_dma*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  %5 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %6 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %5, i32 0, i32 12
  %7 = call i32 @cancel_work_sync(i32* %6)
  %8 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 7
  %10 = load %struct.snd_m3*, %struct.snd_m3** %9, align 8
  %11 = icmp ne %struct.snd_m3* %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %14 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %13, i32 0, i32 8
  %15 = call i32 @spin_lock_irq(i32* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %48, %12
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %19 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %24 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %23, i32 0, i32 7
  %25 = load %struct.snd_m3*, %struct.snd_m3** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %25, i64 %27
  %29 = bitcast %struct.snd_m3* %28 to %struct.m3_dma*
  store %struct.m3_dma* %29, %struct.m3_dma** %3, align 8
  %30 = load %struct.m3_dma*, %struct.m3_dma** %3, align 8
  %31 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load %struct.m3_dma*, %struct.m3_dma** %3, align 8
  %36 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %41 = load %struct.m3_dma*, %struct.m3_dma** %3, align 8
  %42 = bitcast %struct.m3_dma* %41 to %struct.snd_m3*
  %43 = load %struct.m3_dma*, %struct.m3_dma** %3, align 8
  %44 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @snd_m3_pcm_stop(%struct.snd_m3* %40, %struct.snd_m3* %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %34, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %53 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %52, i32 0, i32 8
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %56 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %55, i32 0, i32 7
  %57 = load %struct.snd_m3*, %struct.snd_m3** %56, align 8
  %58 = call i32 @kfree(%struct.snd_m3* %57)
  br label %59

59:                                               ; preds = %51, %1
  %60 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %61 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %66 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HOST_INT_CTRL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outw(i32 0, i64 %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %73 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %78 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %81 = call i32 @free_irq(i64 %79, %struct.snd_m3* %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %84 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %89 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pci_release_regions(i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %94 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @release_firmware(i32 %95)
  %97 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %98 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @release_firmware(i32 %99)
  %101 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %102 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pci_disable_device(i32 %103)
  %105 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %106 = call i32 @kfree(%struct.snd_m3* %105)
  ret i32 0
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_m3_pcm_stop(%struct.snd_m3*, %struct.snd_m3*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.snd_m3*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.snd_m3*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
