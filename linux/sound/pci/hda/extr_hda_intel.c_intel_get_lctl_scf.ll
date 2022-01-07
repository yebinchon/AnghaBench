; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_get_lctl_scf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_intel_get_lctl_scf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_bus = type { i64 }

@intel_get_lctl_scf.preferred_bits = internal global [5 x i32] [i32 2, i32 3, i32 1, i32 4, i32 5], align 16
@AZX_ML_BASE = common dso_local global i64 0, align 8
@AZX_REG_ML_LCAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"set audio clock frequency to 6MHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*)* @intel_get_lctl_scf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_get_lctl_scf(%struct.azx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  %8 = load %struct.azx*, %struct.azx** %3, align 8
  %9 = call %struct.hdac_bus* @azx_bus(%struct.azx* %8)
  store %struct.hdac_bus* %9, %struct.hdac_bus** %4, align 8
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %11 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AZX_ML_BASE, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @AZX_REG_ML_LCAP, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @intel_get_lctl_scf.preferred_bits, i64 0, i64 0))
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* @intel_get_lctl_scf.preferred_bits, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.azx*, %struct.azx** %3, align 8
  %40 = getelementptr inbounds %struct.azx, %struct.azx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
