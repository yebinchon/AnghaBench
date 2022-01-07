; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_init_cmd_io.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_init_cmd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i32* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@CORBLBASE = common dso_local global i32 0, align 4
@CORBUBASE = common dso_local global i32 0, align 4
@CORBSIZE = common dso_local global i32 0, align 4
@CORBWP = common dso_local global i32 0, align 4
@CORBRP = common dso_local global i32 0, align 4
@AZX_CORBRP_RST = common dso_local global i32 0, align 4
@CORBCTL = common dso_local global i32 0, align 4
@AZX_CORBCTL_RUN = common dso_local global i32 0, align 4
@RIRBLBASE = common dso_local global i32 0, align 4
@RIRBUBASE = common dso_local global i32 0, align 4
@RIRBSIZE = common dso_local global i32 0, align 4
@RIRBWP = common dso_local global i32 0, align 4
@AZX_RIRBWP_RST = common dso_local global i32 0, align 4
@RINTCNT = common dso_local global i32 0, align 4
@RIRBCTL = common dso_local global i32 0, align 4
@AZX_RBCTL_DMA_EN = common dso_local global i32 0, align 4
@AZX_RBCTL_IRQ_EN = common dso_local global i32 0, align 4
@GCTL = common dso_local global i32 0, align 4
@AZX_GCTL_UNSOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_bus_init_cmd_io(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %3 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %4 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %12 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %15 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %19 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %22 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %27 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %30 = load i32, i32* @CORBLBASE, align 4
  %31 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %32 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %29, i32 %30, i32 %35)
  %37 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %38 = load i32, i32* @CORBUBASE, align 4
  %39 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %40 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @upper_32_bits(i64 %42)
  %44 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %37, i32 %38, i32 %43)
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %46 = load i32, i32* @CORBSIZE, align 4
  %47 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %45, i32 %46, i32 2)
  %48 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %49 = load i32, i32* @CORBWP, align 4
  %50 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %48, i32 %49, i32 0)
  %51 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %52 = load i32, i32* @CORBRP, align 4
  %53 = load i32, i32* @AZX_CORBRP_RST, align 4
  %54 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %51, i32 %52, i32 %53)
  %55 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %56 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %1
  %60 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %61 = call i32 @azx_clear_corbrp(%struct.hdac_bus* %60)
  br label %62

62:                                               ; preds = %59, %1
  %63 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %64 = load i32, i32* @CORBCTL, align 4
  %65 = load i32, i32* @AZX_CORBCTL_RUN, align 4
  %66 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %63, i32 %64, i32 %65)
  %67 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %68 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2048
  %72 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %73 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %76 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 2048
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %82 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  store i32* %80, i32** %83, align 8
  %84 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %85 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %88 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %91 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memset(i32 %93, i32 0, i32 4)
  %95 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %96 = load i32, i32* @RIRBLBASE, align 4
  %97 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %98 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %95, i32 %96, i32 %101)
  %103 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %104 = load i32, i32* @RIRBUBASE, align 4
  %105 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %106 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @upper_32_bits(i64 %108)
  %110 = call i32 @snd_hdac_chip_writel(%struct.hdac_bus* %103, i32 %104, i32 %109)
  %111 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %112 = load i32, i32* @RIRBSIZE, align 4
  %113 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %111, i32 %112, i32 2)
  %114 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %115 = load i32, i32* @RIRBWP, align 4
  %116 = load i32, i32* @AZX_RIRBWP_RST, align 4
  %117 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %114, i32 %115, i32 %116)
  %118 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %119 = load i32, i32* @RINTCNT, align 4
  %120 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %118, i32 %119, i32 1)
  %121 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %122 = load i32, i32* @RIRBCTL, align 4
  %123 = load i32, i32* @AZX_RBCTL_DMA_EN, align 4
  %124 = load i32, i32* @AZX_RBCTL_IRQ_EN, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %121, i32 %122, i32 %125)
  %127 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %128 = load i32, i32* @GCTL, align 4
  %129 = load i32, i32* @AZX_GCTL_UNSOL, align 4
  %130 = load i32, i32* @AZX_GCTL_UNSOL, align 4
  %131 = call i32 @snd_hdac_chip_updatel(%struct.hdac_bus* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %133 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock_irq(i32* %133)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_hdac_chip_writel(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @snd_hdac_chip_writeb(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @snd_hdac_chip_writew(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @azx_clear_corbrp(%struct.hdac_bus*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @snd_hdac_chip_updatel(%struct.hdac_bus*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
