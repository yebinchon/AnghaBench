; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_tegra = type { i64 }

@HDA_IPFS_CONFIG = common dso_local global i64 0, align 8
@HDA_IPFS_EN_FPCI = common dso_local global i32 0, align 4
@HDA_CFG_CMD = common dso_local global i64 0, align 8
@HDA_DISABLE_INTR = common dso_local global i32 0, align 4
@HDA_ENABLE_MEM_SPACE = common dso_local global i32 0, align 4
@HDA_ENABLE_IO_SPACE = common dso_local global i32 0, align 4
@HDA_ENABLE_BUS_MASTER = common dso_local global i32 0, align 4
@HDA_ENABLE_SERR = common dso_local global i32 0, align 4
@HDA_BAR0_INIT_PROGRAM = common dso_local global i32 0, align 4
@HDA_CFG_BAR0 = common dso_local global i64 0, align 8
@HDA_BAR0_FINAL_PROGRAM = common dso_local global i32 0, align 4
@HDA_FPCI_BAR0_START = common dso_local global i32 0, align 4
@HDA_IPFS_FPCI_BAR0 = common dso_local global i64 0, align 8
@HDA_IPFS_INTR_MASK = common dso_local global i64 0, align 8
@HDA_IPFS_EN_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_tegra*)* @hda_tegra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_tegra_init(%struct.hda_tegra* %0) #0 {
  %2 = alloca %struct.hda_tegra*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_tegra* %0, %struct.hda_tegra** %2, align 8
  %4 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %5 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HDA_IPFS_CONFIG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @HDA_IPFS_EN_FPCI, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %15 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HDA_IPFS_CONFIG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %21 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HDA_CFG_CMD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @HDA_DISABLE_INTR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @HDA_ENABLE_MEM_SPACE, align 4
  %31 = load i32, i32* @HDA_ENABLE_IO_SPACE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HDA_ENABLE_BUS_MASTER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HDA_ENABLE_SERR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %41 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HDA_CFG_CMD, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @HDA_BAR0_INIT_PROGRAM, align 4
  %47 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %48 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HDA_CFG_BAR0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* @HDA_BAR0_FINAL_PROGRAM, align 4
  %54 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %55 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HDA_CFG_BAR0, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* @HDA_FPCI_BAR0_START, align 4
  %61 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %62 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HDA_IPFS_FPCI_BAR0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %68 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HDA_IPFS_INTR_MASK, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @HDA_IPFS_EN_INTR, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.hda_tegra*, %struct.hda_tegra** %2, align 8
  %78 = getelementptr inbounds %struct.hda_tegra, %struct.hda_tegra* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HDA_IPFS_INTR_MASK, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
