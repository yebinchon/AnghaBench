; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_register_restore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_register_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i32 }

@REG_ESAI_TFCR = common dso_local global i32 0, align 4
@ESAI_xFCR_xFR = common dso_local global i32 0, align 4
@REG_ESAI_RFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_esai*)* @fsl_esai_register_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_register_restore(%struct.fsl_esai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_esai*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_esai* %0, %struct.fsl_esai** %3, align 8
  %5 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REG_ESAI_TFCR, align 4
  %9 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %10 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REG_ESAI_RFCR, align 4
  %16 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %17 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regcache_mark_dirty(i32 %21)
  %23 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcache_sync(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_ESAI_TFCR, align 4
  %36 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %37 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %39 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @REG_ESAI_RFCR, align 4
  %42 = load i32, i32* @ESAI_xFCR_xFR, align 4
  %43 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 0)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %31, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
