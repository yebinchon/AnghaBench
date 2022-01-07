; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_ml_lctl_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_ml_lctl_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.hdac_bus = type { i64 }

@AZX_ML_BASE = common dso_local global i64 0, align 8
@AZX_REG_ML_LCTL = common dso_local global i64 0, align 8
@AZX_MLCTL_SPA = common dso_local global i32 0, align 4
@AZX_MLCTL_SPA_SHIFT = common dso_local global i32 0, align 4
@AZX_MLCTL_CPA = common dso_local global i32 0, align 4
@AZX_MLCTL_CPA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, i32)* @intel_ml_lctl_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ml_lctl_set_power(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.azx*, %struct.azx** %4, align 8
  %10 = call %struct.hdac_bus* @azx_bus(%struct.azx* %9)
  store %struct.hdac_bus* %10, %struct.hdac_bus** %6, align 8
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %12 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AZX_ML_BASE, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @AZX_MLCTL_SPA, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AZX_MLCTL_SPA_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %30 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AZX_ML_BASE, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %28, i64 %35)
  store i32 50, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %42 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AZX_ML_BASE, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  %49 = load i32, i32* @AZX_MLCTL_CPA, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @AZX_MLCTL_CPA_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %61

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  %59 = call i32 @udelay(i32 10)
  br label %37

60:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
