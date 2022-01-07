; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_skl_get_dpib_pos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_skl_get_dpib_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AZX_REG_VS_SDXDPIB_XBASE = common dso_local global i64 0, align 8
@AZX_REG_VS_SDXDPIB_XINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_skl_get_dpib_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_skl_get_dpib_pos(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  store %struct.azx* %0, %struct.azx** %3, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %4, align 8
  %5 = load %struct.azx*, %struct.azx** %3, align 8
  %6 = call i32 @azx_bus(%struct.azx* %5)
  %7 = load i64, i64* @AZX_REG_VS_SDXDPIB_XBASE, align 8
  %8 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %9 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %10 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %8, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %7, %14
  %16 = call i32 @_snd_hdac_chip_readl(i32 %6, i64 %15)
  ret i32 %16
}

declare dso_local i32 @_snd_hdac_chip_readl(i32, i64) #1

declare dso_local i32 @azx_bus(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
