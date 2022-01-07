; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTSTS = common dso_local global i32 0, align 4
@RIRBSTS = common dso_local global i32 0, align 4
@RIRB_INT_MASK = common dso_local global i32 0, align 4
@RIRB_INT_RESPONSE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.hdac_bus*
  store %struct.hdac_bus* %9, %struct.hdac_bus** %6, align 8
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %11 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_active(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %22 = load i32, i32* @INTSTS, align 4
  %23 = call i32 @snd_hdac_chip_readl(%struct.hdac_bus* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %17
  %30 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %31 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %26
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %36 = load i32, i32* @RIRBSTS, align 4
  %37 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RIRB_INT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RIRB_INT_RESPONSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %49 = call i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %52 = load i32, i32* @RIRBSTS, align 4
  %53 = load i32, i32* @RIRB_INT_MASK, align 4
  %54 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %34
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %57 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %60 = load i32, i32* @INTSTS, align 4
  %61 = call i32 @snd_hdac_chip_readl(%struct.hdac_bus* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %29, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_bus_update_rirb(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_chip_writeb(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
