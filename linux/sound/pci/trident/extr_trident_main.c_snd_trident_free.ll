; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@SI_SERIAL_INTF_CTRL = common dso_local global i64 0, align 8
@NX_TLBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_trident*)* @snd_trident_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_free(%struct.snd_trident* %0) #0 {
  %2 = alloca %struct.snd_trident*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %2, align 8
  %3 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %4 = call i32 @snd_trident_free_gameport(%struct.snd_trident* %3)
  %5 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %6 = call i32 @snd_trident_disable_eso(%struct.snd_trident* %5)
  %7 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %8 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %14 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %15 = add nsw i64 %14, 3
  %16 = call i32 @TRID_REG(%struct.snd_trident* %13, i64 %15)
  %17 = call i32 @outb(i32 0, i32 %16)
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %20 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %26 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %27 = call i32 @TRID_REG(%struct.snd_trident* %25, i64 %26)
  %28 = call i32 @outl(i32 0, i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %32 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %37 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %40 = call i32 @free_irq(i64 %38, %struct.snd_trident* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %43 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %50 = load i64, i64* @NX_TLBC, align 8
  %51 = call i32 @TRID_REG(%struct.snd_trident* %49, i64 %50)
  %52 = call i32 @outl(i32 0, i32 %51)
  %53 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %54 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @snd_util_memhdr_free(i32 %56)
  %58 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %59 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %66 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %64, %48
  %70 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %71 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vfree(i32 %73)
  %75 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %76 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %69, %41
  %80 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %81 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pci_release_regions(i32 %82)
  %84 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %85 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pci_disable_device(i32 %86)
  %88 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %89 = call i32 @kfree(%struct.snd_trident* %88)
  ret i32 0
}

declare dso_local i32 @snd_trident_free_gameport(%struct.snd_trident*) #1

declare dso_local i32 @snd_trident_disable_eso(%struct.snd_trident*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.snd_trident*) #1

declare dso_local i32 @snd_util_memhdr_free(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_trident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
