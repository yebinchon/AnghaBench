; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, i32, %struct.TYPE_5__*, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EMU_MODEL_EMU1010 = common dso_local global i64 0, align 8
@EMU_HANA_DOCK_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*)* @snd_emu10k1_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_free(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %3 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %4 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %9 = call i32 @snd_emu10k1_fx8010_tram_setup(%struct.snd_emu10k1* %8, i32 0)
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %11 = call i32 @snd_emu10k1_done(%struct.snd_emu10k1* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %13 = call i32 @snd_emu10k1_free_efx(%struct.snd_emu10k1* %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EMU_MODEL_EMU1010, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %24 = load i32, i32* @EMU_HANA_DOCK_PWR, align 4
  %25 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @release_firmware(i32 %33)
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @release_firmware(i32 %37)
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %48 = call i32 @free_irq(i64 %46, %struct.snd_emu10k1* %47)
  br label %49

49:                                               ; preds = %43, %26
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_util_memhdr_free(i32 %52)
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %60, i32 0, i32 7
  %62 = call i32 @snd_dma_free_pages(%struct.TYPE_6__* %61)
  br label %63

63:                                               ; preds = %59, %49
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %70, i32 0, i32 6
  %72 = call i32 @snd_dma_free_pages(%struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @vfree(i32 %76)
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %79 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vfree(i32 %80)
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pci_release_regions(i32 %89)
  br label %91

91:                                               ; preds = %86, %73
  %92 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %100 = call i32 @snd_p16v_free(%struct.snd_emu10k1* %99)
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pci_disable_device(i32 %104)
  %106 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %107 = call i32 @kfree(%struct.snd_emu10k1* %106)
  ret i32 0
}

declare dso_local i32 @snd_emu10k1_fx8010_tram_setup(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_done(%struct.snd_emu10k1*) #1

declare dso_local i32 @snd_emu10k1_free_efx(%struct.snd_emu10k1*) #1

declare dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @free_irq(i64, %struct.snd_emu10k1*) #1

declare dso_local i32 @snd_util_memhdr_free(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_6__*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @snd_p16v_free(%struct.snd_emu10k1*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_emu10k1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
