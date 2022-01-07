; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_init_lctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_init_lctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.hdac_bus = type { i64 }

@AZX_ML_BASE = common dso_local global i64 0, align 8
@AZX_REG_ML_LCTL = common dso_local global i64 0, align 8
@ML_LCTL_SCF_MASK = common dso_local global i32 0, align 4
@AZX_MLCTL_SPA = common dso_local global i32 0, align 4
@AZX_MLCTL_SPA_SHIFT = common dso_local global i32 0, align 4
@AZX_MLCTL_CPA = common dso_local global i32 0, align 4
@AZX_MLCTL_CPA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @intel_init_lctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_lctl(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %2, align 8
  %6 = load %struct.azx*, %struct.azx** %2, align 8
  %7 = call %struct.hdac_bus* @azx_bus(%struct.azx* %6)
  store %struct.hdac_bus* %7, %struct.hdac_bus** %3, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AZX_ML_BASE, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ML_LCTL_SCF_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %63

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AZX_MLCTL_SPA, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @AZX_MLCTL_SPA_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AZX_MLCTL_CPA, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @AZX_MLCTL_CPA_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %63

34:                                               ; preds = %21
  %35 = load %struct.azx*, %struct.azx** %2, align 8
  %36 = call i32 @intel_ml_lctl_set_power(%struct.azx* %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = call i32 @udelay(i32 100)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %59

41:                                               ; preds = %34
  %42 = load i32, i32* @ML_LCTL_SCF_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.azx*, %struct.azx** %2, align 8
  %47 = call i32 @intel_get_lctl_scf(%struct.azx* %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %52 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AZX_ML_BASE, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* @AZX_REG_ML_LCTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %50, i64 %57)
  br label %59

59:                                               ; preds = %41, %40
  %60 = load %struct.azx*, %struct.azx** %2, align 8
  %61 = call i32 @intel_ml_lctl_set_power(%struct.azx* %60, i32 1)
  %62 = call i32 @udelay(i32 100)
  br label %63

63:                                               ; preds = %59, %33, %20
  ret void
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @intel_ml_lctl_set_power(%struct.azx*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @intel_get_lctl_scf(%struct.azx*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
